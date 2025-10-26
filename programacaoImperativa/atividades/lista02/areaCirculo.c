#include <stdio.h>

int main(){
    double raio, area;

    scanf("%lf", &raio);

    area = 3.14159*(raio*raio);
    area = area/10000;

    printf("Area = %.4f \n", area);
}