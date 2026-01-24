#include <stdio.h>

int main(){
    int quantNotas = 0;
    float somaNotas, notasAcima, notasAbaixo = 0;
    float media, porcMedia = 0;

    scanf("%d", &quantNotas);

    int notas[quantNotas];

    for(int i = 0; i <= (quantNotas-1); i++){
        scanf("%d", &notas[i]);

        somaNotas = somaNotas + notas[i];
    }

    media = somaNotas/quantNotas;

    porcMedia = (media*10)/100;

    for(int i = 0; i <= (quantNotas-1); i++){
        if(notas[i] > (media + porcMedia)){
            notasAcima = notasAcima + 1;
        }else if(notas[i] < (media - porcMedia)){
            notasAbaixo = notasAbaixo + 1;
        }
    }

    printf("%.2f\n", media);
    printf("%.0f\n", notasAcima);
    printf("%.0f\n", notasAbaixo);
}