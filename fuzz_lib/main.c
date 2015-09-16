#include <stdio.h>
#include <stdlib.h>
#include "fuzzfis.h"

FuzzFIS_t  controller;
FuzzIO_t   controllerinputs[2]; //number of inputs
FuzzIO_t   controlleroutputs[2]; // number of outputs
FuzzMF_t   MFin[6]; // # of membership on all inputs
FuzzMF_t   MFout[6]; // # of membership on all outputs

enum {error, de}; // Input Tags
enum {ut,vt}; // Output Tags
enum {eNegative, eZero, ePositive, dNegative, dZero, dPositive} ; //membership functions input-tags
enum {uNegative, uZero, uPositive, vNegative, vZero, vPositive} ; //membership functions output-tags

FuzzDefRules(rules,controllerinputs,controlleroutputs) =  { 
                                                            { IF error IS eNegative AND de IS dNegative THEN ut IS uNegative AND vt IS uNegative END},
                                                            { IF error IS eZero AND de IS dNegative THEN ut IS uNegative AND vt IS uPositive END},
                                                            { IF error IS ePositive AND de IS dNegative THEN ut IS uZero END},
                                                            { IF error IS eNegative AND de IS dZero THEN ut IS uNegative END},
                                                            { IF error IS eZero AND de IS dZero THEN ut IS uZero END},
                                                            { IF error IS ePositive AND de IS dZero THEN ut IS uPositive END},
                                                            { IF error IS eNegative AND de IS dPositive THEN ut IS uZero END},
                                                            { IF error IS eZero AND de IS dPositive THEN ut IS uPositive END},
                                                            { IF error IS ePositive AND de IS dPositive THEN ut IS uPositive END},                                                            
                                                            };

int main(void) {
    fuzz_real_t crisp_inputs[]={-0.25, 0.1};
    fuzz_real_t crisp_outputs[] = {0,0};
    /*Add inputs*/
    FuzzAddIO(controllerinputs, error, -2.0, 2.0 ); 
    FuzzAddIO(controllerinputs, de, -2.0, 2.0 );
    /*Add outpus*/
    FuzzAddIO(controlleroutputs, ut, -2.0, 2.0 );
    FuzzAddIO(controlleroutputs, vt, -2.0, 2.0 );
    /*Add membership functions to the inputs*/
    FuzzAddMF(MFin, error , eNegative, trimf, -2.0 , -1.0 , 0.0,FUZZ_IGN);
    FuzzAddMF(MFin, error , eZero, trimf, -1.0 , 0.0 , 1.0, FUZZ_IGN);
    FuzzAddMF(MFin, error , ePositive, trimf, 0.0 , 1.0 , 2.0, FUZZ_IGN);
    FuzzAddMF(MFin, de , dNegative, trimf, -2.0 , -1.0 , 0.0, FUZZ_IGN);
    FuzzAddMF(MFin, de , dZero, trimf, -1.0 , 0.0 , 1.0, FUZZ_IGN);
    FuzzAddMF(MFin, de , dPositive, trimf, 0.0 , 1.0 , 2.0, FUZZ_IGN);
    /*Add membership functions to the outputs*/
    FuzzAddMF(MFout, ut , uNegative, trimf, -2 , -1 , 0,FUZZ_IGN);
    FuzzAddMF(MFout, ut , uZero, trimf, -1 , 0 , 1, FUZZ_IGN);
    FuzzAddMF(MFout, ut , uPositive, trimf, 0 , 1 , 2, FUZZ_IGN); 
    
    FuzzAddMF(MFout, vt , vNegative, trimf, -2 , -1 , 0,FUZZ_IGN);
    FuzzAddMF(MFout, vt , vZero, trimf, -1 , 0 , 1, FUZZ_IGN);
    FuzzAddMF(MFout, vt , vPositive, trimf, 0 , 1 , 2, FUZZ_IGN); 
    
    FuzzSetupFIS(controller, Mamdani, 0.01, FuzzMin, FuzzMax, controllerinputs, controlleroutputs, MFin, MFout);   
    FuzzFuzzification(controller, crisp_inputs);
    if ( FuzzInference(controller, rules) == -1){
        perror("Error evaluatig rules");
    }   
    crisp_outputs[ut] = FuzzDeFuzzification(controller, ut);
    crisp_outputs[vt] = FuzzDeFuzzification(controller, vt);
    printf("\r\n ut=%g  vt=%g",crisp_outputs[ut],crisp_outputs[vt]);
    return (EXIT_SUCCESS);
}
