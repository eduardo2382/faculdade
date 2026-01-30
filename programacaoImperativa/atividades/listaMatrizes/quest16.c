#include <stdio.h>

int main(){
    int matriz[5][5] = {
        {0, 5, 10, 15, 20},
        {1, 6, 11, 16, 2},
        {3, 8, 12, 17, 4},
        {7, 9, 13, 18, 19},
        {14, 2, 5, 3, 11}
    };

    int somCol[5] = {0};
    int somLin[5] = {0};

    for(int l = 0; l < 5; l++){
        for(int c = 0; c < 5; c++){
            somLin[l] += matriz[l][c];
            somCol[c] += matriz[l][c];
        }
    }

    printf("Matriz:\n");
    for(int l = 0; l < 5; l++){
        for(int c = 0; c < 5; c++){
            printf("%d ", matriz[l][c]);
        }
        printf("\n");
    }
    printf("\n");

    printf("Soma da Linhas:\n");
    for(int l = 0; l < 5; l++){
        printf("%d ", somLin[l]);
    }
    printf("\n");

    printf("Soma da Colunas:\n");
    for(int l = 0; l < 5; l++){
        printf("%d ", somCol[l]);
    }
    printf("\n");
}