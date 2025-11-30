#include <stdio.h>

int main(){
    int num, inicio, fim;

    scanf("%d", &num);
    scanf("%d", &inicio);
    scanf("%d", &fim);

    for(int i = inicio; i <= fim; i++){
        if((i%num) == 0){
            printf("%d\n", i);
        }
    }
    
}