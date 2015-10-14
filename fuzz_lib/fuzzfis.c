#include "fuzzfis.h"

/*=========================================================================================================================================*/
void FuzzFisSetup(FuzzFIS_t *obj, fuzz_fis_type_t type, unsigned int evalpoints, 
                  FuzzMethod AND_Method, FuzzMethod OR_Method, 
                  FuzzIO_t *inputs, unsigned char nins, FuzzIO_t *outputs, unsigned char nouts,
                  FuzzMF_t *mfinputs, unsigned char nmfins, FuzzMF_t *mfoutputs, unsigned char nmfouts){
    obj->type = type;
    obj->evalpoints = evalpoints;
    obj->ninputs = nins;
    obj->noutputs = nouts;
    obj->nmfinputs = nmfins;
    obj->nmfoutputs = nmfouts;
    obj->FuzzAND = AND_Method;
    obj->FuzzOR  = OR_Method;
    obj->input = inputs;
    obj->output = outputs;
    obj->inputmf = mfinputs;
    obj->outputmf = mfoutputs;
    obj->rule_cols = 2*nins + (nins-1) +3*nouts ;
}
/*=========================================================================================================================================*/
void FuzzAddMF(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, fuzz_mf_t shape, fuzz_real_t a, fuzz_real_t b, fuzz_real_t c, fuzz_real_t d){
    mfvar[mftag].shape = shape;
    mfvar[mftag].ioindex = iotag;
    mfvar[mftag].points[0]=a;
    mfvar[mftag].points[1]=b;
    mfvar[mftag].points[2]=c;
    mfvar[mftag].points[3]=d;
    mfvar[mftag].fuzzval = 0.0;
}
/*=========================================================================================================================================*/
void FuzzAddOutputFunction(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, SugenoFcn fcn){
    mfvar[mftag].g = fcn;
    mfvar[mftag].ioindex = iotag;
    mfvar[mftag].fuzzval = 0.0;
}
/*=========================================================================================================================================*/
void FuzzAddIO(FuzzIO_t *iovar, unsigned char tag, fuzz_real_t umin, fuzz_real_t umax){
    iovar[tag].xmin = umin;
    iovar[tag].xmax = umax;   
}
/*=========================================================================================================================================*/
void FuzzFuzz(FuzzFIS_t *obj){
    unsigned char i;
    for(i=0;i<obj->ninputs;i++){
        if(obj->input[i].value > obj->input[i].xmax) obj->input[i].value = obj->input[i].xmax;
        if(obj->input[i].value < obj->input[i].xmin) obj->input[i].value = obj->input[i].xmin;
    }
    for(i=0;i<obj->nmfinputs;i++){
        obj->inputmf[i].fuzzval = __fuzz_mf( obj->inputmf[i].shape,  
                                             obj->input[ obj->inputmf[i].ioindex ].value,
                                             obj->inputmf[i].points);
        //printf("\r\n %g",obj->inputmf[i].fuzzval);
    }
}
/*=========================================================================================================================================*/
fuzz_real_t ParseFuzzValue(FuzzMF_t *mfio, short index){
    unsigned char not;
    if ((not=index<0))  index=-index;
    fuzz_real_t y = mfio[index-1].fuzzval;
    y = (y>1.0)? 1.0 : ((y<0.0)? 0.0: y);
    if(not) return 1.0 - y;
    else return y;       
}
/*=========================================================================================================================================*/
int FuzzyIS(FuzzFIS_t *obj,  const short *rules, unsigned char n){
    unsigned char i,j;
    #define _ANTECEDENT_IN_     (0)
    #define _CONSECUENT_OUT_    (2)
    unsigned char RULESTATE=_ANTECEDENT_IN_;
    unsigned char input_index=0;
    short mfinput_index=0;
    unsigned char output_index=0;
    short mfoutput_index=0;
    short conector, last_conector;
    fuzz_real_t rule_strength = 0.0;
    unsigned int index;
    
    for(i=0;i<n;i++){
        RULESTATE=_ANTECEDENT_IN_;
        last_conector = -1;
        rule_strength = 0.0;
        for(j=0;j<obj->rule_cols;j++){
            index = i*obj->rule_cols + j;            
            if (RULESTATE==_ANTECEDENT_IN_){
                input_index = rules[index];
                mfinput_index = rules[index+1];
                conector = rules[index+2];
                switch(last_conector){
                    case _FUZZ_AND_:
                        rule_strength = obj->FuzzAND(rule_strength, ParseFuzzValue(obj->inputmf, mfinput_index));
                        break;
                    case _FUZZ_OR_:
                        rule_strength = obj->FuzzOR(rule_strength, ParseFuzzValue(obj->inputmf, mfinput_index));
                        break;
                    case -1:
                        rule_strength = ParseFuzzValue(obj->inputmf, mfinput_index);
                        break;
                    default:
                        return -1;
                        break;
                }
                //printf("\r\n * Ar:%d %d %d %g",input_index, mfinput_index,conector,rule_strength);
                if (input_index<0 ||input_index>obj->ninputs) return -1;
                
                if(conector==_FUZZ_AND_ || conector==_FUZZ_OR_){
                    last_conector = conector;
                    RULESTATE = _ANTECEDENT_IN_;
                    j+=2;
                    continue;
                }
                else if(conector==_FUZZ_THEN_){
                    RULESTATE = _CONSECUENT_OUT_;
                    j+=2;
                    continue;
                }
                else return -1;
            }
            else if (RULESTATE==_CONSECUENT_OUT_){ //implication min
                output_index = rules[index];
                mfoutput_index = rules[index+1]-1;
                conector = (obj->noutputs>1)? rules[index+2] : -1;
                j+=2;
                switch(obj->type){
                    case Mamdani:
                        obj->outputmf[mfoutput_index].fuzzval = FuzzMax(obj->outputmf[mfoutput_index].fuzzval, rule_strength); //agreggation using max
                        break;
                    case Sugeno:
                        //obj->outputmf[mfoutput_index].fuzzval = obj->outputmf[mfoutput_index]
                        break;
                    default: return -1;
                }
                //printf("\r\n strength %g Cr:%d mfoutindex:%d",rule_strength,output_index, mfoutput_index);
                if(conector != _FUZZ_AND_ ) break;     
            }       
        }
    }    
    return 0;
}
/*=========================================================================================================================================*/
int FuzzDeFuzz(FuzzFIS_t *obj){
    int i,j;
    fuzz_real_t x;
    fuzz_real_t z;
    fuzz_real_t fx;
    fuzz_real_t intfx,intxfx;
    fuzz_real_t res;
    unsigned char tag;
    for(tag=0;tag<obj->noutputs;tag++){
        intfx=intxfx=0.0; 
        res = ((obj->output[tag].xmax - obj->output[tag].xmin)/obj->evalpoints);
        for(i=0;i<obj->evalpoints+1;i++){
            x = obj->output[tag].xmin + (i*res);
            if(x > obj->output[tag].xmax) x = obj->output[tag].xmax;
            fx = 0.0;
            for(j=0;j<obj->nmfoutputs;j++){
                if(obj->outputmf[j].ioindex == tag){
                    z = __fuzz_mf( obj->outputmf[j].shape, x , obj->outputmf[j].points);
                    fx = FuzzMax( fx,  (z>obj->outputmf[j].fuzzval)? obj->outputmf[j].fuzzval : z );
                }            
            }
            intxfx+=x*fx;
            intfx+=fx;
            if(x >= obj->output[tag].xmax) break;
        }
        obj->output[tag].value = (intxfx/intfx);
    }
}
/*=========================================================================================================================================*/
fuzz_real_t __fuzz_mf(fuzz_mf_t mf,fuzz_real_t x,fuzz_real_t *points){
    fuzz_real_t a,b,c,d;
    fuzz_real_t temp,temp1,temp2;
    switch(mf){
        case trimf:
            a = points[0];
            b = points[1];
            c = points[2];
            return FuzzMax( FuzzMin( (x-a)/(b-a)  , (c-x)/(c-b) ) , 0.0 );
        case trapmf:
            a = points[0];
            b = points[1];
            c = points[2];
            d = points[3];
            return FuzzMax( FuzzMin( FuzzMin(  (x-a)/(b-a) , 1  ) , (d-x)/(d-c) ) , 0.0 );
        case gbellmf:
            a = points[0];
            b = points[1];
            c = points[2];
            return ( 1.0/ (1.0  +  pow( fabs( (x-c)/a ), 2*b ) ) );
        case gaussmf:
            a = points[0];
            b = points[1];
            temp = (x-b)/a; 
            return exp( -0.5*temp*temp );
        case gauss2mf:
            a = points[0];
            b = points[1];
            c = points[2];
            d = points[3];
            temp1 = (x<=b);
            temp2 = (x-b);
            temp = exp((-temp2*temp2)/(2*a*a))*temp1 + (1-temp1);
            temp1 = (x>=d);
            temp2 = (x-d);
            temp *= exp((-temp2*temp2)/(2*c*c))*temp1 + (1-temp1);
            return temp;          
        case sigmf:
            a = points[0];
            b = points[1];
            return ( 1.0/( 1.0 + exp(-a*(x-b)) ) );
        case dsigmf:
            return fabs( __fuzz_mf(sigmf, x, points) - __fuzz_mf(sigmf, x, points+2) );
        case psigmf:
            return ( __fuzz_mf(sigmf, x, points) * __fuzz_mf(sigmf, x, points+2) ); 
        case pimf:
            return ( __fuzz_mf(smf, x, points) * __fuzz_mf( zmf, x, points+2) );              
        case smf:
            a = points[0];
            b = points[1];
            if (x<=a)                   return 0.0;
            if (x>=a && x<=((a+b)/2)){
                temp = (x-a)/(b-a); 
                return (2.0*temp*temp);
            }
            if (x<=b && x>=((a+b)/2)){
                temp = (x-b)/(b-a); 
                return (1.0 - (2.0*temp*temp));
            }
            if (x>=b)                   return 1.0;
            return 0.0;
        case zmf:
            a = points[0];
            b = points[1];
            if (x<=a)                   return 1.0;
            if (x>=a && x<=((a+b)/2))   return (1.0 - (2.0*pow( (x-a)/(b-a) , 2 )));
            if (x<=b && x>=((a+b)/2))   return (2.0*pow( (x-b)/(b-a) , 2 ));
            if (x>=b)                   return 0.0;
            return 0.0;
        case singletonmf:
            a = points[0];
            return ( (x==a)? 1.0 : 0.0  );
        default:
            return 0.0;           
    }
}
/*=========================================================================================================================================*/
fuzz_real_t FuzzMin(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = ((a<b)? a : b);
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}
/*=========================================================================================================================================*/
fuzz_real_t FuzzMax(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = ((a>b)? a : b);
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}
/*=========================================================================================================================================*/
fuzz_real_t FuzzProd(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = a*b;
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}
/*=========================================================================================================================================*/
fuzz_real_t FuzzProbOR(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = a + b - a*b;
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}
/*=========================================================================================================================================*/
