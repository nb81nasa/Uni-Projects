/* benoetigte Header einfuegen */
#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<math.h>
#define PI 3.14159265

/* struct Dreieck hier vereinbaren */
struct Dreieck {
       double seiteA;
       double seiteB;
       double seiteC;
};

/* folgende Funktionen implementieren */
bool dreieckGueltig(struct Dreieck tri);

double kosinussatz(double seiteC, double seiteA,
                   double seiteB); // Winkel gegenüber von seiteC ist
                                   // eingeschlossen von seiteA und seiteB
void winkel(struct Dreieck tri, double *alpha, double *beta, double *gamma);
double umkreisRadius(struct Dreieck tri);
double inkreisRadius(struct Dreieck tri);
double flaecheKreisring(double radiusAussen, double radiusInnen);
double laengeKreisbogen(double radius, double winkel);
double flaecheKreissektor(double radius, double winkel);

int main(void)
{
    struct Dreieck tri;
    double alpha, beta, gamma;

    printf("Geben Sie die Länge der Seiten a, b und c des Dreiecks an: ");
    int success = scanf("%lf, %lf, %lf", &tri.seiteA, &tri.seiteB, &tri.seiteC);
    if (success != 3) {
        fprintf(stderr, "Fehler bei der Eingabe: Erwarte 3 doubles durch Komma "
                        "getrennt. Bitte nochmal!\n");
        return EXIT_FAILURE;
    }
    printf("Folgende Daten gelesen: a=%g, b=%g, c=%g\n", tri.seiteA, tri.seiteB,
           tri.seiteC);

    /* hier den Test auf gueltiges Dreieck einfuegen */
    if(!dreieckGueltig(tri)){
           fprintf(stderr, "Dreiecke ist ungueltig!\n");
        return EXIT_FAILURE;
    }

    printf("Umkreisradius des Dreiecks ist: %f\n", umkreisRadius(tri));
    printf("Inkreisradius des Dreiecks ist: %f\n", inkreisRadius(tri));
    winkel(tri, &alpha, &beta, &gamma);
    printf("In grad: alpha: %.3f beta: %.3f gamma: %.3f\n", alpha, beta, gamma);

    printf("Fläche eines Kreisringes des Umkreisradius und des Inkreisradius: "
           "%f\n",
           flaecheKreisring(umkreisRadius(tri), inkreisRadius(tri)));
    printf("Länge eines Kreisbogens des Dreiecks bei Winkel alpha ist: %f\n",
           laengeKreisbogen(umkreisRadius(tri), alpha));
    printf("Fläche Kreissektor des Dreiecks bei Winkel gamma ist: %f\n",
           flaecheKreissektor(umkreisRadius(tri), gamma));

    return EXIT_SUCCESS;
}

bool dreieckGueltig(struct Dreieck tri){
       if((tri.seiteA + tri.seiteB) > tri.seiteC && (tri.seiteA + tri.seiteC) > tri.seiteB && (tri.seiteB + tri.seiteC) > tri.seiteA){
              return true;
       }
       else{
              return false;
       }
}

double kosinussatz(double seiteC, double seiteA, double seiteB){

       return acos( (((pow(seiteA, 2.0)) + (pow(seiteB, 2.0))) - (pow(seiteC, 2.0)))/ (2.0*seiteA*seiteB) ) * 180.0 / PI;

}

void winkel(struct Dreieck tri, double *alpha, double *beta, double *gamma){
       *alpha = kosinussatz(tri.seiteA, tri.seiteB, tri.seiteC);
       *beta = kosinussatz(tri.seiteB, tri.seiteA, tri.seiteC);
       *gamma = kosinussatz(tri.seiteC, tri.seiteA, tri.seiteB);
}

double umkreisRadius(struct Dreieck tri){

       return tri.seiteA / (2.0 * sin(kosinussatz(tri.seiteA, tri.seiteB, tri.seiteC)/ 180.0 * PI));

}

double inkreisRadius(struct Dreieck tri){
       double alpha, beta, gamma;
       winkel(tri, &alpha, &beta, &gamma);
       return 4.0 * umkreisRadius(tri) * sin((alpha / 180.0 * PI) / 2.0) * sin((beta / 180.0 * PI) / 2.0) * sin((gamma / 180.0 * PI) / 2.0);
}

double flaecheKreisring(double radiusAussen, double radiusInnen){

       return (PI * pow(radiusAussen, 2.0)) - (PI * pow(radiusInnen, 2.0));

}
double laengeKreisbogen(double radius, double winkel){
       
       return radius * PI * winkel / 180.0;
}

double flaecheKreissektor(double radius, double winkel){

       return laengeKreisbogen(radius, winkel) * radius / 2.0;
}










