#include <stdio.h>

int main(){
    float notas[15][5];
    char nomes[15][50];

    for(int i = 0; i <= 14; i++){
        for(int k = 0; k <= 4; k++){
            scanf("%f", &notas[i][k]);
        }
    }

    printf("Nomes: \n");

    for(int i = 0; i <= 14; i++){
        scanf("%s", nomes[i]);
    }

    for(int a = 0; a <= 14; a++){
        float media, soma = 0;

        printf("Nome: %s \n", nomes[a]);

        for(int n = 0; n <= 4; n++){
            printf("--Nota %d: %.2f\n", n, notas[a][n]);
            soma += notas[a][n];
        }

        media = soma / 5;

        printf("Media Aritmetica: %f\n", media);

        if(media >= 5){
            printf("ALUNO APROVADO!!\n");
        }else{
            printf("ALUNO REPROVADO!!\n");
        }
    }
}