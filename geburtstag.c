#include <stdio.h>
#include <stdlib.h>
#include <time.h>

typedef struct {

    int tag;
    int monat;
    int jahr;

} Geburtstag;

int alterInTagen(Geburtstag const *datum, int refJahr);

int meinRand(int untereGrenze, int obereGrenze);

Geburtstag *zufaelligerGeburtstag(unsigned int laenge);

void printGeburtstag(Geburtstag const *const daten, unsigned int laenge, int refJahr);

int vergleichGeburtstage(const void *geb1, const void *geb2);

int main(int argc, char const *argv[]){

    if (argc != 2){

        fprintf(stderr, "Das Program soll so aufgerufen werden: ./geburtstag <Arraygroesse>\n");
        return EXIT_FAILURE;
    }

    else if (atoi(argv[1]) <= 0){

        fprintf(stderr, "Geben Sie Parameter groesser als 0 ein.\n");
        return EXIT_FAILURE;
    }
    
    srand(time(NULL));

    unsigned int referenzjahr = 0;

    printf("Geben Sie das Referenzjahr ein:\n");

    int eingabeAnzahl = scanf("%u", &referenzjahr);
    if (eingabeAnzahl != 1){

        fprintf(stderr, "Sie haben keine richtige Eingabe eingegeben.\n");
        return EXIT_FAILURE;
    }

    Geburtstag *zufaelligerGeburtstagsArray = malloc(sizeof(Geburtstag) * 3);
    zufaelligerGeburtstagsArray = zufaelligerGeburtstag(atoi(argv[1]));

    printf("\nDas Array vor der Sortierung:\n");

    printGeburtstag( zufaelligerGeburtstagsArray, atoi(argv[1]), referenzjahr);

    printf("\nDas Array nach der Sortierung:\n");

    qsort(zufaelligerGeburtstagsArray, atoi(argv[1]), sizeof(Geburtstag), vergleichGeburtstage);
    printGeburtstag( zufaelligerGeburtstagsArray, atoi(argv[1]), referenzjahr);

    return EXIT_SUCCESS;

}

int alterInTagen(Geburtstag const *datum, int refJahr){

    int alterInTagen = 0;

    if (refJahr > datum->jahr){

        alterInTagen = (((refJahr - 1) - (datum->jahr)) * 365) - datum->tag + 1;

        for (int i = datum->monat; i != 13 ; i++){
            if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12){

                alterInTagen += 31;
            }
            else if (i == 4 || i == 6 || i == 9 || i == 11){
                alterInTagen += 30;
            }
            else if( i == 2){
                alterInTagen += 28;
            }
        }
    }

    else{

        alterInTagen = (((refJahr) - (datum->jahr)) * 365) - datum->tag + 1;

        for (int i = 1; i != datum->monat; i++){
            if (i == 1 || i == 3 || i == 5 || i == 7 || i == 8 || i == 10 || i == 12){

                alterInTagen -= 31;
            }
            else if (i == 4 || i == 6 || i == 9 || i == 11){
                alterInTagen -= 30;
            }
            else if( i == 2){
                alterInTagen -= 28;
            }
        }
    }

    return alterInTagen;
}

int meinRand(int untereGrenze, int obereGrenze){

    return untereGrenze +  (rand() % (obereGrenze - untereGrenze + 1));
}

Geburtstag  *zufaelligerGeburtstag(unsigned int laenge){
    
    Geburtstag *arrayVonGeburtstagen = malloc(sizeof(Geburtstag) * laenge);

    for (unsigned int i = 0; i < laenge; i++){

        arrayVonGeburtstagen[i].jahr = meinRand(1900, 2100);
        arrayVonGeburtstagen[i].monat = meinRand(1, 12);

        if (arrayVonGeburtstagen[i].monat == 1 || arrayVonGeburtstagen[i].monat == 3 || 
            arrayVonGeburtstagen[i].monat == 5 || arrayVonGeburtstagen[i].monat == 7 || arrayVonGeburtstagen[i].monat == 8 || 
            arrayVonGeburtstagen[i].monat == 10 || arrayVonGeburtstagen[i].monat == 12){

                arrayVonGeburtstagen[i].tag = meinRand(1, 31);
            }
            else if (arrayVonGeburtstagen[i].monat == 4 || arrayVonGeburtstagen[i].monat == 6 || 
                     arrayVonGeburtstagen[i].monat == 9 || arrayVonGeburtstagen[i].monat == 11){
                
                arrayVonGeburtstagen[i].tag = meinRand(1, 30);
            }
            else if( arrayVonGeburtstagen[i].monat == 2){

                arrayVonGeburtstagen[i].tag = meinRand(1, 28);
            }
    }

    return arrayVonGeburtstagen;
}

void printGeburtstag(Geburtstag const *const daten, unsigned int laenge, int refJahr){
    
    for (unsigned int i = 0; i < laenge; i++){

        if (alterInTagen(&daten[i], refJahr) >= 0){

            printf("Geboren am %d.%d.%d; Alter in Tagen bis zum Jahr %d: %d\n",
            daten[i].tag, daten[i].monat, daten[i].jahr, refJahr, alterInTagen(&daten[i], refJahr));
        }
        else{

            printf("Oh nooo, es ist das Jahr %d und ich werde erst in %d Tagen am %d.%d.%d geboren.\n", 
            refJahr, (-1 * alterInTagen(&daten[i], refJahr)), daten[i].tag, daten[i].monat, daten[i].jahr);
        }
    }

}

int vergleichGeburtstage(const void *geb1, const void *geb2){

    int jahreszahl = 2000;

    if (alterInTagen(geb1, jahreszahl) < alterInTagen(geb2, jahreszahl)){

        return -1;
    }

    else if (alterInTagen(geb1, jahreszahl) > alterInTagen(geb2, jahreszahl)){

        return 1;
    }

    else{

        return 0;
    }

}