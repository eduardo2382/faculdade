#include <stdio.h>

int main(){
    int primeira, periodo, cont;

    scanf("%d", &primeira);
    scanf("%d", &periodo);

    for(int i = 1; i<=3; i++){
        int doseAtual = primeira + (periodo*i);
        if(i != 3){
            printf("%d ", doseAtual);
        }else{
            printf("%d\n", doseAtual);
        }
    }
}