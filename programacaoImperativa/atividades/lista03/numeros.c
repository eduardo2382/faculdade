#include <stdio.h>

int main(){
    long numero, positivo, par;
    
    scanf("%ld", &numero);

    par = (numero%2) == 0;

    if(numero > 0){
        if(par){
            printf("POSITIVO PAR \n");
        }else{
            printf("POSITIVO IMPAR \n");
        };
    }else if(numero < 0){
        if(par){
            printf("NEGATIVO PAR \n");
        }else{
            printf("NEGATIVO IMPAR \n");
        };
    }else{
        printf("NULO\n");
    }
}