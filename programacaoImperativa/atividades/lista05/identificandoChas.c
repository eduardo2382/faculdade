#include <stdio.h>

int main(){ 
    int num[5], f, acertos; 
    acertos = 0;

    scanf("%d", &f);

    for (int i = 0; i <= 4; i++){
        scanf("%d", &num[i]);

        if(num[i] == f){
            acertos = acertos + 1;
        }
    }
    
    printf("%d\n", acertos);
}   