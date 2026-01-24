#include <stdio.h>

int main(){
    char nome[50];
    char carac = "";
    int cont = 0;

    fgets(nome, 50, stdin);

    scanf("%c", &carac);

    for(int i = 0; i <= 49; i++){
        if(nome[i] == carac){
            cont = cont + 1;
        }
    }

    printf("%d\n", cont);

}