#include <stdio.h>

int main(){
    int n;

    scanf("%d", &n);

    int numsOrig[n];
    int numsInv[n];
    int posUltElem = n-1;

    for(int i = 0; i <= posUltElem; i++){
        scanf("%d", &numsOrig[i]);
    }

    for(int i = 0; i <= (n-1); i++){
        int indc = (i + (posUltElem * (-1))) * (-1);

        numsInv[indc] = numsOrig[i];
    }

    for(int i = 0; i <= posUltElem; i++){
        if(i == posUltElem){
            printf("%d\n", numsInv[i]);
        }else{
            printf("%d ", numsInv[i]);
        }
    }
}