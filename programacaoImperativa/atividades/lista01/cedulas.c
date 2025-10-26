#include <stdio.h>

int main(){
    int cedulas, total, cem, cinquenta, vinte, dez, cinco, dois, um; 

    scanf("%d", &cedulas);

    total = cedulas;

    cem = total / 100;
    total = total - (cem*100);

    cinquenta = total / 50;
    total = total - (cinquenta*50);

    vinte = total / 20;
    total = total - (vinte*20);

    dez = total / 10;
    total = total - (dez*10);

    cinco = total / 5;
    total = total - (cinco*5);

    dois = total / 2;
    total = total - (dois*2);

    um = total;

    printf("%d \n%d nota(s) de R$ 100,00 \n%d nota(s) de R$ 50,00 \n%d nota(s) de R$ 20,00 \n%d nota(s) de R$ 10,00 \n%d nota(s) de R$ 5,00 \n%d nota(s) de R$ 2,00 \n%d nota(s) de R$ 1,00 \n", cedulas, cem, cinquenta, vinte, dez, cinco, dois, um);
}