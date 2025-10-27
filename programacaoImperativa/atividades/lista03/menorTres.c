#include <stdio.h>

int main(){
    int num1, num2, num3, menor;

    scanf("%d \n %d \n %d", &num1, &num2, &num3);

    if((num1 <= num2) && (num1 <= num3)){
        menor = num1;
    }else if((num2 <= num1) && (num2 <= num3)){
        menor = num2;
    }else if((num3 <= num1) && (num3 <= num2)){
        menor = num3;
    }

    printf("%d \n", menor);
}