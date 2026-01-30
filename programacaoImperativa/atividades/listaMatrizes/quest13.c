#include <stdio.h>

int main(){
    int matriz[6][4] = {
        {5, 12, 7, 19},
        {3, 8, 14, 6},
        {10, 2, 18, 11},
        {9, 15, 4, 13},
        {1, 20, 16, 0},
        {17, 6, 8, 3}
    };

    for(int l = 0; l < 6; l++){
        int maior = 0;

        for(int c = 0; c < 4; c++){
            if(c == 0){
                maior = matriz[l][c];
            } else if(matriz[l][c] > maior){
                maior = matriz[l][c];
            }   
        }

        for(int c = 0; c < 4; c++){
            matriz[l][c] = matriz[l][c] * maior;   
        }
    }

    for(int l = 0; l < 6; l++){
        for(int c = 0; c < 4; c++){
            printf("%d ", matriz[l][c]);
        }
        printf("\n");
    }
}