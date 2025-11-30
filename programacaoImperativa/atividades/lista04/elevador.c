#include <stdio.h>

int main(){
    int leituras, capacidade, entrada, saida, excedida, pessoas;

    excedida = 0;
    pessoas = 0;

    scanf("%d %d", &leituras, &capacidade);

    for(int i = leituras; i >= 1; i--){
        scanf("%d %d", &saida, &entrada);

        pessoas = (pessoas + entrada) - saida;

        if(pessoas > capacidade){
            excedida = 1;
        }
    }

    if(excedida){
        printf("S\n");
    }else{
        printf("N\n");
    }
}