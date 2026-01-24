#include <stdio.h>
#include <string.h>

int main(){
    char s1[] = "Flamengo";
    char s2[] = "Vasco";

    printf("O tamanho de (%s) é de %ld caracs\n", s1, strlen(s1));
    printf("O tamanho de (%s) é de %ld caracs\n", s2, strlen(s2));

    strcat(s1, s2);

    printf("A duas strings concatenadas é: %s", s1);
    
}