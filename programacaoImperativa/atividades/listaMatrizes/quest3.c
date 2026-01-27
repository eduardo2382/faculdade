#include <stdio.h>

int main(){
    int matriz[6][3];
    int maiorElem[3];
    int menorElem[3];

    for(int i = 0; i <= 5; i++){
        for(int k = 0; k <= 2; k++){
            scanf("%d", &matriz[i][k]);

            if(i == 0 && k == 0){
                maiorElem[0] = matriz[i][k];
                maiorElem[1] = i;
                maiorElem[2] = k;
                menorElem[0] = matriz[i][k];
                menorElem[1] = i;
                menorElem[2] = k;
            }else{
                if(matriz[i][k] > maiorElem[0]){
                    maiorElem[0] = matriz[i][k];
                    maiorElem[1] = i+1;
                    maiorElem[2] = k+1;
                }else if(matriz[i][k] < menorElem[0]){
                    menorElem[0] = matriz[i][k];
                    menorElem[1] = i+1;
                    menorElem[2] = k+1;
                }
            }
        }
    }

    printf("Maior elemento: %d \nPosicao: (%d, %d)\n", maiorElem[0], maiorElem[1], maiorElem[2]);
    printf("Menor elemento: %d \nPosicao: (%d, %d)\n", menorElem[0], menorElem[1], menorElem[2]);
}