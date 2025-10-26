#include <stdio.h>

int main(){
    int horas, minutos, x;

    scanf("%d", &horas);

    scanf("%d", &minutos);

    x = (horas*60)+minutos;

    printf("%d minutos. \n", x);
}