#include <stdio.h>

int main(){
    int n, e, possivel = 0;
    
    scanf("%d %d", &n, &e);

    int gestos[n];

    for(int i = 0; i <= (n-1); i++){
        scanf("%d", &gestos[i]);
    }

    for(int i = 0; i <= (n-1); i++){
        for(int g = 0; g <= (n-1); g++){
            if(i != g){
                if((gestos[i] + gestos[g]) == e){
                    possivel = 1;
                }
            }
        }
    }

    if(possivel){
        printf("SIM\n");
    }else{
        printf("NAO\n");
    }

}