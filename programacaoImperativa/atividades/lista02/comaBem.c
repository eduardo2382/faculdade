#include <stdio.h>

int main(){
    float gasto, total;

    scanf("%f", &gasto);

    total = gasto + ((gasto*10)/100);

    printf("%.2f \n", total);
}