#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<math.h>

void nullStellenBerechnen(double a, double b, double c){

    if( a == 0 && b == 0 && c == 0){

        printf("Jede reelle Zahl ist Loesung.\n");
    }
    else if ( a == 0 && b != 0 && c != 0 ){

        printf("Es gibt nur eine Loesung. Die Loesung ist: x = %f\n", -c/b);
    }

    else {
        b /= a;
        c /= a;

        double unterWurzel = ((b*b)/4) - c;

        if (unterWurzel == 0){

            printf("Es gibt eine Loesung:\nx = %f", -(b/2));
        }

        else if(unterWurzel > 0){
            
            printf("Es gibt zwei loesungen:\nx1 = %f, x2 = %f\n", -(b/2) + (sqrt(unterWurzel)), -(b/2) - (sqrt(unterWurzel)));
        }
        
        else {

            printf("Es gibt keine Loesung.\n");
        }
    }

}

int main(void)
{
    double a = 0.0, b = 0.0, c = 0.0;

    printf("Nullstellen der quadratischen Gleichung ax^2+bx+c=0\n");
    printf("Bitte geben Sie a, b, c ein: ");

    int scanfTesten = scanf("%lf, %lf, %lf", &a, &b, &c);

    if ( scanfTesten != 3 ){

        fprintf(stderr, "Ihre Eingabe war unerfolgreich! Die Eingabe sollten mit Komma getrent.\n");
        return EXIT_FAILURE;
    }
    
    else {

        nullStellenBerechnen(a, b, c);
    }


    return EXIT_SUCCESS;
}
