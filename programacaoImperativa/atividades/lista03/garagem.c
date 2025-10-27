#include <stdio.h>

int main(){
    int L, C, H, l, c, h;

    scanf("%d %d %d %d %d %d", &L, &C, &H, &l, &c, &h);

    if((l <= L) && (c <= C) && (h <= H)){
        printf("SIM \n");
    }else{
        printf("NAO \n");
    };
}