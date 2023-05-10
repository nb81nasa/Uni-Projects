#ifndef VEKTOR_H
#define VEKTOR_H 1

typedef struct Vektor Vektor;

Vektor * vektorErzeugen( int arraySize);

void vektorFreigeben (Vektor *vektor);

float getEinElementAusVektor (Vektor *vektor, int index);

void setElementeInVektor (Vektor *vektor, float elem, int index);

float inneresProduktBestimmen(Vektor *vektorX, Vektor *vektorY);

float normVektor (Vektor *vektor);

#endif