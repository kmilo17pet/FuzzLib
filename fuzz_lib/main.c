#include <stdio.h>
#include <stdlib.h>
#include "fuzzfis.h"

/*
 * example recreated from http://www-personal.umich.edu/~johannb/Papers/paper105.pdf*
 * Implemented on MATLAB
 * C-code generated using fistocfuzz 
 * 
 * /

/* FIS Object */
FuzzFIS_t flexnav;
/* I/O Fuzzy Objects */
FuzzIO_t flexnav_inputs[4];
FuzzIO_t flexnav_outputs[2];
/* I/O Membership Objects */
FuzzMF_t MFin[12];
FuzzMF_t MFout[6];
/*  Input Labels */
enum { wt, dax, day, ae };
/* Output Labels */
enum { phit, thetat };
enum { wtSLOW, wtMED, wtFAST, daxLOW, daxMED, daxHIGH, dayLOW, dayMED, dayHIGH, aeLOW, aeMED, aeHIGH };
enum { phitGYRO, phitBOTH, phitACCEL, thetatGYRO, thetatBOTH, thetatACCEL };

FuzzDefRules(flexnav_Rules,flexnav_inputs,flexnav_outputs) =  { 
	{ IF wt ISNOT wtSLOW THEN phit IS phitGYRO AND thetat IS thetatGYRO END },
	{ IF dax IS daxHIGH THEN thetat IS thetatGYRO END },
	{ IF day IS dayHIGH THEN thetat IS thetatGYRO END },
	{ IF ae IS aeHIGH THEN phit IS phitGYRO AND thetat IS thetatGYRO END },
	{ IF wt IS wtSLOW AND dax IS daxLOW AND ae IS aeLOW THEN phit IS phitACCEL END },
	{ IF wt IS wtSLOW AND day IS dayLOW AND ae IS aeLOW THEN thetat IS thetatACCEL END },
	{ IF wt IS wtSLOW AND dax IS daxLOW AND ae IS aeMED THEN phit IS phitBOTH END },
	{ IF wt IS wtSLOW AND day IS dayLOW AND ae IS aeMED THEN thetat IS thetatBOTH END },
	{ IF wt IS wtSLOW AND dax IS daxMED AND ae IS aeLOW THEN phit IS phitBOTH END },
	{ IF wt IS wtSLOW AND day IS dayMED AND ae IS aeLOW THEN thetat IS thetatBOTH END },
	{ IF wt IS wtMED AND dax IS daxLOW AND ae IS aeLOW THEN phit IS phitBOTH END },
	{ IF wt IS wtMED AND day IS dayLOW AND ae IS aeLOW THEN thetat IS thetatBOTH END },
	{ IF wt IS wtMED AND dax ISNOT daxLOW THEN phit IS phitGYRO END },
	{ IF wt IS wtMED AND day ISNOT dayLOW THEN thetat IS thetatGYRO END },
	{ IF wt IS wtMED AND ae ISNOT aeLOW THEN phit IS phitGYRO AND thetat IS thetatGYRO END },
};

int main(int argc, char** argv) {
	/* Add inputs */
	FuzzAddIO( flexnav_inputs, wt, 0, 0.5 );
	FuzzAddIO( flexnav_inputs, dax, 0, 5 );
	FuzzAddIO( flexnav_inputs, day, 0, 5 );
	FuzzAddIO( flexnav_inputs, ae, 0, 20 );
	FuzzAddIO( flexnav_outputs, phit, 0, 1 );
	FuzzAddIO( flexnav_outputs, thetat, 0, 1 );
	/* Add membership functions to the inputs */
	FuzzAddMF( MFin, wt, wtSLOW, trimf, -0.2 ,0 ,0.2 ,FUZZ_IGN );
	FuzzAddMF( MFin, wt, wtMED, trimf, 0.1 ,0.25 ,0.4 ,FUZZ_IGN );
	FuzzAddMF( MFin, wt, wtFAST, trimf, 0.3 ,0.5 ,0.7 ,FUZZ_IGN );
	FuzzAddMF( MFin, dax, daxLOW, trimf, -1 ,0 ,2 ,FUZZ_IGN );
	FuzzAddMF( MFin, dax, daxMED, trimf, 1 ,2.5 ,4 ,FUZZ_IGN );
	FuzzAddMF( MFin, dax, daxHIGH, trimf, 3 ,5 ,7 ,FUZZ_IGN );
	FuzzAddMF( MFin, day, dayLOW, trimf, -2 ,0 ,2 ,FUZZ_IGN );
	FuzzAddMF( MFin, day, dayMED, trimf, 1 ,2.5 ,4 ,FUZZ_IGN );
	FuzzAddMF( MFin, day, dayHIGH, trimf, 3 ,5 ,7 ,FUZZ_IGN );
	FuzzAddMF( MFin, ae, aeLOW, trimf, -8 ,0 ,8 ,FUZZ_IGN );
	FuzzAddMF( MFin, ae, aeMED, trimf, 5 ,10 ,15 ,FUZZ_IGN );
	FuzzAddMF( MFin, ae, aeHIGH, trimf, 12 ,20 ,28 ,FUZZ_IGN );
	/* Add membership functions to the outputs */
	FuzzAddMF( MFout, phit, phitGYRO, trimf, -0.4 ,0 ,0.4 ,FUZZ_IGN );
	FuzzAddMF( MFout, phit, phitBOTH, trimf, 0.2 ,0.5 ,0.8 ,FUZZ_IGN );
	FuzzAddMF( MFout, phit, phitACCEL, trimf, 0.6 ,1 ,1.4 ,FUZZ_IGN );
	FuzzAddMF( MFout, thetat, thetatGYRO, trimf, -0.4 ,0 ,0.4 ,FUZZ_IGN );
	FuzzAddMF( MFout, thetat, thetatBOTH, trimf, 0.2 ,0.5 ,0.8 ,FUZZ_IGN );
	FuzzAddMF( MFout, thetat, thetatACCEL, trimf, 0.6 ,1 ,1.4 ,FUZZ_IGN );

	/* Configure de Inference System */
	FuzzSetupFIS( flexnav, Mamdani, FuzzMin, FuzzMax, flexnav_inputs, flexnav_outputs, MFin, MFout );

	/* Set the crips inputs */
	 flexnav_inputs[wt].value = 0.332;
	 flexnav_inputs[dax].value = 1.53;
	 flexnav_inputs[day].value = 3.5;
	 flexnav_inputs[ae].value = 6.36;

	FuzzFuzzification( flexnav );
	if ( FuzzInference( flexnav, flexnav_Rules ) == -1){
		/* Error! */
	}
	FuzzDeFuzzification( flexnav );

	/* Get the crips outputs */
	printf("\r\n %g   %g", flexnav_outputs[phit].value, flexnav_outputs[thetat].value);

	return (EXIT_SUCCESS);
}
