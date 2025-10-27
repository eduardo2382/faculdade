#include <stdio.h>

int main(){
    int F, I, brinquedos;

    brinquedos = 0;

    scanf("%d %d", &F, &I);

    if(F >= 150 && I >= 12)
    {
        brinquedos++;
    };

    if(F >= 140 && I >= 14)
    {
        brinquedos++;
    };

    if(F >= 170 || I >= 16)
    {
        brinquedos++;
    };

    printf("%d \n", brinquedos);
}