#include <stdio.h>

int main(){
    double a, b, c, areaTriangulo, areaCirculo, areaTrapezio, areaQuadrado, areaRetangulo;

    scanf("%lf %lf %lf", &a, &b, &c);

    areaTriangulo = (a*c)/2;
    areaCirculo = 3.14159*(c*c);
    areaTrapezio = ((a+b)*c)/2;
    areaQuadrado = b*b;
    areaRetangulo = a*b;

    printf("TRIANGULO: %.3lf\nCIRCULO: %.3lf\nTRAPEZIO: %.3lf\nQUADRADO: %.3lf\nRETANGULO: %.3lf\n", areaTriangulo, areaCirculo, areaTrapezio, areaQuadrado, areaRetangulo);
}