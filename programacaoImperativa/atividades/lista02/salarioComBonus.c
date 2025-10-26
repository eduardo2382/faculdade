#include <stdio.h>

int main(){
    char nome;

    float salario, vendas, total;

    scanf("%s", &nome);

    scanf("%f", &salario);

    scanf("%f", &vendas);

    total = salario + ((vendas*15)/100);

    printf("TOTAL = R$ %.2f \n", total);
}