/*******************************************************************************
 *	FuzzFIS - A C-ANSI Library for Fuzzy Inference Systems on embedded devices
 *      Version : 1.8
 *	Copyright (C) 2011 Eng. Juan Camilo Gomez C. MSc. (kmilo17pet@gmail.com)
 *      
 *	FuzzFIS is free software: you can redistribute it and/or modify it
 *	under the terms of the GNU Lesser General Public License as published by
 *	the Free Software Foundation, either version 3 of the License, or
 *	(at your option) any later version.
 *
 *	FuzzFIS is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *	GNU Lesser General Public License for more details.
 *
 *	You should have received a copy of the GNU Lesser General Public License
 *	along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * 
 *      Library Constraints: Implication using Min, Aggregation using Max, Defuzz using Centroid-Mamdani -> WtAver-Sugeno
 *      Model types: Mamdani and Sugeno
 *      Supported Membership Functions: trimf, trapmf, gaussmf, sigmf, zmf, smf, gbellmf, singletonmf
 * 
*******************************************************************************/

#ifndef FUZZFIS_H
#define	FUZZFIS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <math.h>
  
#define FUZZ_IGN            (0.0)    

#define _FUZZ_AND_          (-0x7FFE)
#define _FUZZ_OR_           (-0x7FFD)
#define _FUZZ_THEN_         (-0x7FFC)
    
#define     IF         
#define     AND             +1),_FUZZ_AND_,
#define     OR              +1),_FUZZ_OR_,
#define     THEN            +1),_FUZZ_THEN_,
#define     IS              ,(   
#define     ISNOT           ,-(
#define     END             +1)

typedef float  fuzz_real_t;
typedef enum{trimf, trapmf, gbellmf, gaussmf, gauss2mf, sigmf, dsigmf, psigmf, pimf, smf, zmf, singletonmf}fuzz_mf_t;
typedef enum{Mamdani=0, Sugeno=1}fuzz_fis_type_t;
typedef unsigned char fuzz_input_t;
typedef unsigned char fuzz_output_t;
typedef unsigned char fuzz_var_t;
typedef int fuzz_rules_t;

#define fuzz_tags_t enum;

typedef fuzz_real_t (*SugenoFcn)(fuzz_real_t*);
typedef fuzz_real_t (*FuzzMethod)(fuzz_real_t, fuzz_real_t); 

typedef struct{
    fuzz_real_t xmin, xmax;    
    fuzz_real_t value;
}FuzzIO_t;

#define __fuzzlength(_X_) (sizeof(_X_)/sizeof(_X_[0]))
#define FuzzDefRules(_VAR_,  _FIS_INPUTS_, _FIS_OUTPUTS_)    short _VAR_[][(2*__fuzzlength(_FIS_INPUTS_))+((__fuzzlength(_FIS_INPUTS_))-1)+(3*__fuzzlength(_FIS_OUTPUTS_))] 

typedef struct{
    unsigned char ioindex;
    unsigned char tag;
    fuzz_mf_t   shape;
    SugenoFcn g;
    fuzz_real_t points[4];
    fuzz_real_t fuzzval;
}FuzzMF_t;

#pragma pack(1)
typedef struct{
    fuzz_fis_type_t   type;
    FuzzIO_t *input;
    FuzzIO_t *output;
    FuzzMF_t *inputmf;
    FuzzMF_t *outputmf;
    unsigned char rule_cols;
    unsigned char ninputs;
    unsigned char noutputs;
    unsigned char nmfinputs;
    unsigned char nmfoutputs;
    unsigned int  evalpoints;
    FuzzMethod FuzzAND,FuzzOR;
}FuzzFIS_t;    

fuzz_real_t FuzzMin(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzMax(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzProd(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzProbOR(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t __fuzz_mf(fuzz_mf_t mf,fuzz_real_t x,fuzz_real_t *points);

#define FuzzSetupFIS(OBJ, TYPE, AND_METHOD, OR_METHOD, FINPUTS, FOUTPUTS, MF_INPUTS, MF_OUTPUS)  FuzzFisSetup(&OBJ, TYPE, 100, AND_METHOD, OR_METHOD, FINPUTS, sizeof(FINPUTS)/sizeof(FINPUTS[0]), FOUTPUTS, sizeof(FOUTPUTS)/sizeof(FOUTPUTS[0]), MF_INPUTS, sizeof(MF_INPUTS)/sizeof(MF_INPUTS[0]), MF_OUTPUS, sizeof(MF_OUTPUS)/sizeof(MF_OUTPUS[0]) )
void FuzzFisSetup(FuzzFIS_t *obj, fuzz_fis_type_t type, unsigned int evalpoints, 
                  FuzzMethod AND_Method, FuzzMethod OR_Method, 
                  FuzzIO_t *inputs, unsigned char nins, FuzzIO_t *outputs, unsigned char nouts,
                  FuzzMF_t *mfinputs, unsigned char nmfins, FuzzMF_t *mfoutputs, unsigned char nmfouts);
#define FuzzFuzzification(OBJ)      FuzzFuzz(&OBJ)                     
void FuzzFuzz(FuzzFIS_t *obj);
#define FuzzInference(OBJ, FRULES)      FuzzyIS(&OBJ, &FRULES[0][0], sizeof(FRULES)/sizeof(FRULES[0]) )
int FuzzyIS(FuzzFIS_t *obj,  const short *rules, unsigned char n);
void FuzzAddIO(FuzzIO_t *iovar, unsigned char tag, fuzz_real_t umin, fuzz_real_t umax);
void FuzzAddMF(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, fuzz_mf_t shape, fuzz_real_t a, fuzz_real_t b, fuzz_real_t c, fuzz_real_t d);
void FuzzAddOutputFunction(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, SugenoFcn fcn);
fuzz_real_t ParseFuzzValue(FuzzMF_t *mfio, short index);


#define FuzzDeFuzzification(OBJ)      FuzzDeFuzz(&OBJ)  
int FuzzDeFuzz(FuzzFIS_t *obj);
#ifdef	__cplusplus
}
#endif

#endif	/* FUZZFIS_H */

