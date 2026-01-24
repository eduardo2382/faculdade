#include <stdio.h>

int main(){
    int nums[101];

    int contNum = 0;

    while (contNum <= 100){
        scanf("%d", &nums[contNum]);

        contNum = contNum + 1;
    }

    for(int i = 0; i <= 99; i++){
        if(nums[i] == nums[100]){
            printf("%d\n", i);
        }
    }
}