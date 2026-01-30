#include <stdio.h>

int main(){
    float matriz[5][5] = {
        {1.5, 3.2, 7.8, 15.3, 9.1},
        {2.4, 18.6, 5.9, 12.7, 4.3},
        {19.2, 8.1, 14.5, 6.8, 11.4},
        {0.7, 16.9, 3.5, 20.0, 13.2},
        {10.6, 2.1, 17.8, 9.9, 6.4}
    };

    float soma = 0;

    for(int l = 0; l < 5; l++){
        for(int c = 4; c >= 0; c--){
            if((l+c) == 4){
                soma += matriz[l][c];
            }
        }
    }

    printf("%.2f", soma);
}