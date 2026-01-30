#include <stdio.h>

int main(){
    int matriz[3][3] = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    }, num;

    printf("Digite um numero: ");
    scanf("%d", &num);

    for(int l = 0; l <= 2; l++){
        for(int c = 0; c <= 2; c++){
            matriz[l][c] = matriz[l][c] * num;
        }
    }

    for(int l = 0; l <= 2; l++){
        for(int c = 0; c <= 2; c++){
            if(matriz[l][c] < 10){
                printf("0%d ", matriz[l][c]);
            }else{
                printf("%d ", matriz[l][c]);
            }
        }
        printf("\n");
    }
}