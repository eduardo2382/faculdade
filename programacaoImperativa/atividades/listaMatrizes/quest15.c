#include <stdio.h>

int main(){
    float matriz[12][13] = {
        {18, 5, 12, 3, 19, 7, 14, 2, 11, 6, 15, 8, 1},
        {9, 16, 4, 13, 2, 10, 17, 6, 3, 14, 8, 19, 5},
        {2, 11, 7, 18, 1, 15, 4, 12, 9, 6, 20, 3, 14},
        {13, 8, 16, 5, 11, 2, 19, 10, 7, 15, 3, 12, 6},
        {6, 14, 9, 17, 4, 11, 18, 2, 13, 8, 5, 16, 10},
        {20, 7, 12, 3, 15, 9, 4, 14, 6, 18, 2, 11, 13},
        {5, 19, 8, 6, 14, 3, 10, 17, 12, 2, 15, 7, 9},
        {11, 4, 16, 13, 8, 6, 18, 1, 11, 19, 5, 14, 20},
        {7, 15, 2, 10, 12, 17, 6, 9, 3, 14, 8, 13, 4},
        {14, 6, 19, 11, 5, 16, 9, 2, 15, 7, 12, 10, 3},
        {9, 18, 4, 13, 7, 11, 16, 20, 6, 5, 14, 8, 2},
        {12, 3, 17, 9, 6, 15, 4, 14, 10, 8, 19, 2, 7}
    }, matrizMod[12][13];

    for(int l = 0; l < 12; l++){
        int maior = 0;

        for(int c = 0; c < 13; c++){
            if(c == 0){
                maior = matriz[l][c];
            }else if(matriz[l][c] > maior){
                maior = matriz[l][c];
            }
        }   

        for(int c = 0; c < 13; c++){
            matrizMod[l][c] = matriz[l][c]/maior;
        }   
    }

    printf("Matriz Original: \n");
    for(int l = 0; l < 12; l++){  
        for(int c = 0; c < 13; c++){
            printf("%.2f ", matriz[l][c]);
        }   
        printf("\n");
    }

    printf("Matriz modificada: \n");
    for(int l = 0; l < 12; l++){  
        for(int c = 0; c < 13; c++){
            printf("%.2f ", matrizMod[l][c]);
        }   
        printf("\n");
    }
}