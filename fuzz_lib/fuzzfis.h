/*******************************************************************************
 *	FuzzFIS - A C-ANSI Library for Fuzzy Inference System for embedded devices
 *      Version : 1.6
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
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
    
#define FUZZ_DEFAULT_RES    (0.01)    
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
#define     FIS_RULES(_VAR_)   int _VAR_[FUZZ_MAX_NOF_RULES][FUZZ_MAX_RULES_ANT_CONSC]

typedef float  fuzz_real_t;
typedef enum{trimf=0, trapmf=1, gaussmf=2, sigmf=3, zmf=4, smf=5, gbellmf=6, singletonmf=7}fuzz_mf_t;
typedef enum{Mamdani=0, Sugeno=1}fuzz_fis_type_t;
typedef unsigned char fuzz_input_t;
typedef unsigned char fuzz_output_t;
typedef unsigned char fuzz_var_t;
typedef int fuzz_rules_t;

typedef fuzz_real_t (*FuzzMethod)(fuzz_real_t, fuzz_real_t); 

typedef struct{
    fuzz_real_t xmin, xmax;    
}FuzzIO_t;

#define __fuzzlength(_X_) (sizeof(_X_)/sizeof(_X_[0]))
#define FuzzDefRules(_VAR_,  _FIS_INPUTS_, _FIS_OUTPUTS_)    short _VAR_[][(2*__fuzzlength(_FIS_INPUTS_))+((__fuzzlength(_FIS_INPUTS_))-1)+(3*__fuzzlength(_FIS_OUTPUTS_))] 

typedef struct{
    unsigned char ioindex;
    unsigned char tag;
    fuzz_mf_t   shape;
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
    fuzz_real_t  res;
    FuzzMethod FuzzAND,FuzzOR;
}FuzzFIS_t;    

fuzz_real_t FuzzMin(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzMax(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzProd(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzProbOR(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t __fuzz_mf(fuzz_mf_t mf,fuzz_real_t x,fuzz_real_t *points);

#define FuzzSetupFIS(OBJ, TYPE, UNIVERSE_RES, AND_METHOD, OR_METHOD, FINPUTS, FOUTPUTS, MF_INPUTS, MF_OUTPUS)  FuzzFisSetup(&OBJ, TYPE, UNIVERSE_RES, AND_METHOD, OR_METHOD, FINPUTS, sizeof(FINPUTS)/sizeof(FINPUTS[0]), FOUTPUTS, sizeof(FOUTPUTS)/sizeof(FOUTPUTS[0]), MF_INPUTS, sizeof(MF_INPUTS)/sizeof(MF_INPUTS[0]), MF_OUTPUS, sizeof(MF_OUTPUS)/sizeof(MF_OUTPUS[0]) )
void FuzzFisSetup(FuzzFIS_t *obj, fuzz_fis_type_t type, fuzz_real_t universe_resolution, 
                  FuzzMethod AND_Method, FuzzMethod OR_Method, 
                  FuzzIO_t *inputs, unsigned char nins, FuzzIO_t *outputs, unsigned char nouts,
                  FuzzMF_t *mfinputs, unsigned char nmfins, FuzzMF_t *mfoutputs, unsigned char nmfouts);
#define FuzzFuzzification(OBJ, REAL_INPUTS)      FuzzFuzz(&OBJ, REAL_INPUTS )                     
void FuzzFuzz(FuzzFIS_t *obj, fuzz_real_t *inputs);
#define FuzzInference(OBJ, FRULES)      FuzzyIS(&OBJ, &FRULES[0][0], sizeof(FRULES)/sizeof(FRULES[0]) )
int FuzzyIS(FuzzFIS_t *obj,  const short *rules, unsigned char n);
void FuzzAddIO(FuzzIO_t *iovar, unsigned char tag, fuzz_real_t umin, fuzz_real_t umax);
void FuzzAddMF(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, fuzz_mf_t shape, fuzz_real_t a, fuzz_real_t b, fuzz_real_t c, fuzz_real_t d);
fuzz_real_t ParseFuzzValue(FuzzMF_t *mfio, short index);


#define FuzzDeFuzzification(OBJ, TAG)      FuzzDeFuzz(&OBJ, TAG)  
fuzz_real_t FuzzDeFuzz(FuzzFIS_t *obj, unsigned char tag);

#ifdef	__cplusplus
}
#endif

#endif	/* FUZZFIS_H */

