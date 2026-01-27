#include <stdio.h>

int main(){
    int matriz[3][5];
    int contNum = 0;

    for(int i = 0; i <= 2; i++){
        printf("Digite os valores da linha %d: ", i);
        for(int k = 0; k <= 4; k++){
            scanf("%d", &matriz[i][k]);

            if(matriz[i][k] > 15 && matriz[i][k] < 20){ 
                contNum++;
            }
        }
    }

    printf("Matriz: \n");
    for(int i = 0; i <= 2; i++){
        for(int k = 0; k <= 4; k++){
            if(k < 4){
                printf("%d ", matriz[i][k]);
            }else{
                printf("%d\n", matriz[i][k]);
            }
        }
    }

    printf("Quantidade de elementos entre 15 e 20: %d\n", contNum);
}