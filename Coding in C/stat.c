#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

typedef struct {

    char magic[16];
    char datenTyp[16];
    char elementZaehler[16];

} FileHeader;

typedef struct {

    unsigned int n;
    double *werte;
} FileData;

FileData binaerWarteEinlesen (const char *dateiName);

int main(){

    FileData fd = binaerWarteEinlesen("stat.bin");

    double mittelwert = 0;

    for (unsigned int i = 0; i < fd.n; i++){
        mittelwert += fd.werte[i];
    }

    mittelwert /= fd.n;
    printf("Mittelwert: %f\n", mittelwert);

    double varianz = 0;

    for (unsigned int i = 0; i < fd.n; i++){
        varianz += (fd.werte[i] - mittelwert) * (fd.werte[i] - mittelwert);
    }

    varianz *= ( 1 / ( ((double)fd.n) - 1 ) );

    printf("Varianz: %f\n", varianz);
    printf("Standardabweichung: %f\n", sqrt(varianz));

    return EXIT_SUCCESS;
}

FileData binaerWarteEinlesen (const char *dateiName){

    FILE *f = fopen (dateiName, "r");

    if(f == NULL){

        fprintf(stderr, "'%s': Konnte nicht oeffnen\n", dateiName);
        exit(EXIT_FAILURE);

    }

    FileHeader fh;

    fread(fh.magic, sizeof(char), 16, f);
    fread(fh.datenTyp, sizeof(char), 16, f);
    fread(fh.elementZaehler, sizeof(char), 16, f);

    if (strcmp(fh.magic, "STATDATA") || strcmp(fh.datenTyp, "DOUBLE")){

        fprintf(stderr, "Zeichenketten im Header stimmen nicht!");
        exit(EXIT_FAILURE);
    }


    unsigned int n = atoi(fh.elementZaehler);
    double *werte = malloc(sizeof(double) * n);

    if (werte == NULL){

        fprintf (stderr, "Zu wenig Heapspeicher!");
        exit(EXIT_FAILURE);
    }

    if (fread(werte, sizeof(double), n, f) < n){
        fprintf(stderr, "Unerwartete Dateiende!");
        exit(EXIT_FAILURE);
    }

    FileData fd = {n, werte};

    fclose(f);

    return fd;
}