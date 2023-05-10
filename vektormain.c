#include <stdio.h>
#include <stdlib.h>

#include "vektor.h"

int main(){

    float x [] = {9, 47, 3, 395, 2};
    float y [] = {26, 465, 73, 2, 9};

    Vektor *a = vektorErzeugen(sizeof(x)/sizeof(x[0]));
    Vektor *b = vektorErzeugen(sizeof(y)/sizeof(y[0]));

    for(int i = 0; i < (int)sizeof(x)/(int)sizeof(x[0]); i++){

        setElementeInVektor(a, x[i], i);
    }

    for(int i = 0; i < (int)sizeof(y)/(int)sizeof(y[0]); i++){

        setElementeInVektor(b, y[i], i);
    }

    printf("||a|| = %f\n\n", normVektor(a));
    printf("||b|| = %f\n\n", normVektor(b));

    printf("a.b = %f\n\n", inneresProduktBestimmen(a,b));

    vektorFreigeben(a);
    vektorFreigeben(b);

    return EXIT_SUCCESS;
}