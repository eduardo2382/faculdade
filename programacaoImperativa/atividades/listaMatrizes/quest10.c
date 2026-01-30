#include <stdio.h>

int main(){
    int matriz[5][5] = {
        {1, 2, 3, 4, 5},
        {6, 7, 8, 9, 10},
        {11, 12, 13, 14, 15},
        {16, 17, 18, 19, 20},
        {21, 22, 23, 24, 25}
    };

    int somLin4 = 0; 
    int somCol2 = 0;
    int somDiaPrin = 0;
    int somDiaSec = 0;

    for(int l = 0; l <= 4; l++){
        for(int c = 0; c <= 4; c++){
            if(l == 3){
                somLin4 += matriz[l][c];
            }

            if(c == 1){
                somCol2 += matriz[l][c];
            }

            if(l == c){
                somDiaPrin += matriz[l][c];
            }
        }
    }

    for(int l = 4; l >= 0; l--){
        for(int c = 4; c >= 0; c--){
            if(l == c){
                somDiaSec += matriz[l][c];
            }
        }
    }

    printf("Soma Linha 4: %d\n", somLin4);
    printf("Soma Coluna 2: %d\n", somCol2);
    printf("Soma Diagonal Principal: %d\n", somDiaPrin);
    printf("Soma Diagonal Secundaria: %d\n", somDiaSec);
}