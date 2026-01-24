#include <stdio.h>

int main(){
    int cresc, descresc, noord = 0;

    int cartas[5];

    for(int i = 0; i <= 4; i++){
        scanf("%d", &cartas[i]);
    }

    for(int i = 0; i <= 4; i++){
        if(i == 0){
            if(cartas[i+1] >= cartas[i]){
                cresc = 1;
                descresc = 0;
                noord = 0;
            }else if(cartas[i+1] < cartas[i]){
                descresc = 1;
                cresc = 0; 
                noord = 0;
            }
        }else if(i != 4){
            if(cresc && (cartas[i+1] >= cartas[i])){
                cresc = 1;
                descresc = 0;
                noord = 0;
            } else if(descresc && (cartas[i+1] <= cartas[i])){
                cresc = 0;
                descresc = 1;
                noord = 0;
            }else{
                cresc = 0;
                descresc = 0;
                noord = 1;
            }
        }   
        
    }

    if(cresc){
        printf("C\n");
    }else if(descresc){
        printf("D\n");
    }else{
        printf("N\n");
    }

}