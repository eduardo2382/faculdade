#include <stdio.h>

int main(){
    float valorAtual, soma, quantidade, media;

    valorAtual = 0;
    quantidade = 0;
    soma = 0;

    while(valorAtual >= 0){
        scanf("%f", &valorAtual);

        if(valorAtual >= 0){
            soma = soma + valorAtual;
            quantidade += 1;
        }
    }

    media = soma/quantidade;

    printf("%.2f\n", media);
}