#include <stdio.h>
#include <stdlib.h>
#include "fuzzfis.h"

FuzzFIS_t  controller;
FuzzIO_t   controllerinputs[2]; //number of inputs
FuzzIO_t   controlleroutputs[2]; // number of outputs
FuzzMF_t   MFin[6]; //  membership on all inputs
FuzzMF_t   MFout[6]; //  membership on all outputs

enum {error, de}; // Input Tags
enum {ut,vt}; // Output Tags
enum {eNegative, eZero, ePositive, dNegative, dZero, dPositive} ; //membership functions input-tags
enum {uNegative, uZero, uPositive, vNegative, vZero, vPositive} ; //membership functions output-tags

FuzzDefRules(rules,controllerinputs,controlleroutputs) =  { 
                                                            { IF error IS eNegative AND de IS dNegative THEN ut IS uNegative AND vt IS vPositive END },
                                                            { IF error IS eZero AND de IS dNegative THEN ut IS uNegative AND vt IS vPositive END },
                                                            { IF error IS ePositive AND de IS dNegative THEN ut IS uZero AND vt IS vZero END},
                                                            { IF error IS eNegative AND de IS dZero THEN ut IS uNegative AND vt IS vPositive END},
                                                            { IF error IS eZero AND de IS dZero THEN ut IS uZero AND vt IS vZero END},
                                                            { IF error IS ePositive AND de IS dZero THEN ut IS uPositive AND vt IS vNegative END},
                                                            { IF error IS eNegative AND de IS dPositive THEN ut IS uZero  AND vt IS vZero END},
                                                            { IF error IS eZero AND de IS dPositive THEN ut IS uPositive AND vt IS vNegative END},
                                                            { IF error IS ePositive AND de IS dPositive THEN ut IS uPositive AND vt IS vNegative END},                                                            
                                                            };

int main(void) {
    /*Add inputs*/
    FuzzAddIO(controllerinputs, error, -2.0, 2.0 ); 
    FuzzAddIO(controllerinputs, de, -2.0, 2.0 );
    /*Add outpus*/
    FuzzAddIO(controlleroutputs, ut, -2.0, 2.0 );
    FuzzAddIO(controlleroutputs, vt, -1.0, 1.0 );
    
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
    
    FuzzAddMF(MFout, vt , vNegative, trimf, -1 , -0.5 , 0,FUZZ_IGN);
    FuzzAddMF(MFout, vt , vZero, trimf, -0.5 , 0 , 0.5, FUZZ_IGN);
    FuzzAddMF(MFout, vt , vPositive, trimf, 0 , 0.5 , 1, FUZZ_IGN); 
    
    FuzzSetupFIS(controller, Mamdani, FuzzMin, FuzzMax, controllerinputs, controlleroutputs, MFin, MFout);   
    
    controllerinputs[error].value = -0.25;
    controllerinputs[de].value = 0.1;
    FuzzFuzzification(controller);
    if ( FuzzInference(controller, rules) == -1){
        perror("Error evaluatig rules");
    }   
    FuzzDeFuzzification(controller);

    printf("\r\n ut=%g  vt=%g",controlleroutputs[ut].value, controlleroutputs[vt].value);
    return (EXIT_SUCCESS);
}
