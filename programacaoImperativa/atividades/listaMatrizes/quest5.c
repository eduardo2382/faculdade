#include <stdio.h>

int main(){
    float vendas[12][4];
    float totMes[12] = {0};
    float totSem[48] = {0};
    float totAno = 0;

    char nomesMes[12][10] = {
        "Janeiro",
        "Fevereiro",
        "Marco",
        "Abril",
        "Maio",
        "Junho",
        "Julho",
        "Agosto",
        "Setembro",
        "Outubro",
        "Novembro",
        "Dezembro"
    };

    for(int mes = 0; mes <= 11; mes++){
        for(int semana = 0; semana <= 3; semana++){
            scanf("%f", &vendas[mes][semana]);
        }
    }

    for(int mes = 0; mes <= 11; mes++){
        for(int semana = 0; semana <= 3; semana++){
            totMes[mes] += vendas[mes][semana];

            totSem[(mes*4)+semana] = vendas[mes][semana];

            totAno += vendas[mes][semana];
        }
    }

    printf("\nTotal de vendas por mês:\n");
    for(int i = 0; i <= 11; i++){
        printf("%s: R$%.2f\n", nomesMes[i], totMes[i]);
    }

    printf("\nTotal por semana:\n");
    for(int i = 0; i <= 47; i++){
        printf("Semana %d: R$%.2f\n", i+1, totSem[i]);
    }

    printf("\nTotal ano: R$%.2f\n", totAno);
}