#include <stdio.h>

int main(){
    int numero, horas;
    float valorHoras, salario;

    scanf("%d", &numero);

    scanf("%d", &horas);

    scanf("%f", &valorHoras);

    salario = horas * valorHoras;

    printf("NUMBER = %d\nSALARY = R$ %.2f \n", numero, salario);
}