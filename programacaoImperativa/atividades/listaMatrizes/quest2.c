#include <stdio.h>

int main(){
    int matriz[2][4];
    float contEntre, contPares, somaPares, mediaPares = 0;

    for(int i = 0; i <= 1; i++){
        for(int k = 0; k <= 3; k++){
            scanf("%d", &matriz[i][k]);

            if(matriz[i][k] > 12 && matriz[i][k] < 20){
                contEntre++;
            }

            if((matriz[i][k] % 2) == 0){
                contPares++;
                somaPares += matriz[i][k];
            }

        }
    }

    if(contPares != 0){
        mediaPares = somaPares/contPares;
    }

    printf("Quantidade de elementos entre 12 e 20: %.0f\n", contEntre);
    printf("Media dos elementos pares: %.2f\n", mediaPares);

}