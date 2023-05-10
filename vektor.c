#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "vektor.h"


struct Vektor {
    float *arrayZeiger;
    int arraySize;
};

Vektor * vektorErzeugen (int arraySize){

    if (arraySize <= 0){
        fprintf(stderr, "Die Arraygroesse soll mehr als 0 sein.\n");
        exit(EXIT_FAILURE);
    }

    Vektor *vektor = malloc(sizeof(Vektor));

    vektor-> arrayZeiger = malloc(sizeof(float) * arraySize);
    vektor-> arraySize = arraySize;

    for (int i = 0; i < arraySize; i++){
        vektor->arrayZeiger[i] = 0;
    }

    printf("Es wurde ein Vektor von Groesse = %d erzeugt.\n\n", arraySize);

    return vektor;
}

void vektorFreigeben (Vektor *vektor){

    free(vektor);
    printf("Es wurde das Vektor erflogreich freigegeben.\n");

}

float getEinElementAusVektor (Vektor *vektor, int index){

    if (index >= 0 && index < vektor->arraySize){

        return vektor->arrayZeiger[index];
    }
    else{

        fprintf(stderr ,"Das Index = %d exestiert nicht.\n", index);
        exit(EXIT_FAILURE);
    }
}

void setElementeInVektor (Vektor *vektor, float elem, int index){

    if (index >= 0 && index < vektor->arraySize){

        vektor->arrayZeiger[index] = elem;
    }
    else{

        fprintf(stderr ,"Array index out of bounds.\n");
        exit(EXIT_FAILURE);
    }

    
}

float inneresProduktBestimmen(Vektor *vektorX, Vektor *vektorY){

    if(vektorX->arraySize != vektorY->arraySize){

        fprintf(stderr ,"Die Vektoren haben unterschiedliche Groesse.\n");
        exit(EXIT_FAILURE);
    }

    float inneresProduktErgebnis = 0.0;

    for(int i = 0; i < vektorX->arraySize; i++){
        inneresProduktErgebnis += (vektorX->arrayZeiger[i] * vektorY->arrayZeiger[i]);
    }

    return inneresProduktErgebnis;

}

float normVektor (Vektor *vektor){

    return sqrt(inneresProduktBestimmen(vektor, vektor));
}