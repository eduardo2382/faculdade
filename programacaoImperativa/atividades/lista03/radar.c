#include <stdio.h>

int main(){
    int pontos;

    float veloMax,veloVeiculo, valorMulta, porcentagem;

    valorMulta = 0.00;
    pontos = 0;

    scanf("%f\n%f", &veloMax, &veloVeiculo);

    if(veloVeiculo > veloMax){
        porcentagem = ((veloVeiculo - veloMax) / veloMax) * 100;

        if(porcentagem <= 20){
            valorMulta = 85.13;
            pontos = 4;
        }else if((porcentagem > 20) && (porcentagem <= 50)){
            valorMulta = 127.69;
            pontos = 5;
        }else{
            valorMulta = 574.62;
            pontos = 7;
        }

        printf("%.2f\n%d\n", valorMulta, pontos);
    }else{
        printf("%.2f\n%d\n", valorMulta, pontos);
    };
};