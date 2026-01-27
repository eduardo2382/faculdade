#include <stdio.h>

int main(){
    int matrizM[4][6] = {
        {1, 1, 1, 1, 1, 1},
        {2, 2, 2, 2, 2, 2},
        {1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1},
    };

    int matrizN[6][4] = {
        {1, 2, 1, 1},
        {1, 2, 1, 1},
        {1, 2, 1, 1},
        {1, 2, 1, 1},
        {1, 2, 1, 1},
        {1, 2, 1, 1},
    };

    int somLin[4] = {0};
    int somCol[4] = {0};

    for(int i = 0; i <= 3; i++){
        for(int k = 0; k <= 5; k++){
            somLin[i] = somLin[i] + matrizM[i][k];
            somCol[i] = somCol[i] + matrizN[k][i];
        }
    }

    for(int i = 0; i <= 3; i++){
        printf("Linha %d + Coluna %d: %d\n", i+1, i+1, somCol[i] + somLin[i]);
    }
}