#include <stdio.h>

int main(){
    int matriz1[3][8] = {
        {1, 2, 3, 4, 5, 6, 7, 8},
        {9, 10, 11, 12, 13, 14, 15, 16},
        {17, 18, 19, 20, 21, 22, 23, 24}
    };

    int matriz2[3][8] = {
        {1, 2, 3, 4, 5, 6, 7, 8},
        {9, 10, 11, 12, 13, 14, 15, 16},
        {17, 18, 19, 20, 21, 22, 23, 24}
    };

    int matrizSoma[3][8], matrizDif[3][8];

    for(int l = 0; l <=2; l++){
        for(int c = 0; c <= 7; c++){
            matrizSoma[l][c] = matriz1[l][c] + matriz2[l][c];
            matrizDif[l][c] = matriz1[l][c] - matriz2[l][c];
        }
    }

    printf("Soma:\n");
    for(int l = 0; l <=2; l++){
        for(int c = 0; c <= 7; c++){
            if(matrizSoma[l][c] < 10){
                printf("0%d ", matrizSoma[l][c]);
            }else{
                printf("%d ", matrizSoma[l][c]);
            }
        }
        printf("\n");
    }

    printf("Diferenca:\n");
    for(int l = 0; l <=2; l++){
        for(int c = 0; c <= 7; c++){
            if(matrizDif[l][c] < 10){
                printf("0%d ", matrizDif[l][c]);
            }else{
                printf("%d ", matrizDif[l][c]);
            }
        }
        printf("\n");
    }
}