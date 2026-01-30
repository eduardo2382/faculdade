#include <stdio.h>

int main(){
    int matriz[2][3] = {
        {12, 7, 19},
        {3, 15, 8}
    };

    int quant = 0;

    for(int l = 0; l < 2; l++){
        for(int c = 0; c < 3; c++){
            if(!(matriz[l][c] >= 5 && matriz[l][c] <= 15)){
                quant++;
            }
        }
    }

    printf("%d", quant);
}