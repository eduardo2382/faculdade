#include <stdio.h>

int main(){
    int interGrafica, intelArtif, encap, inden, structs;

    scanf("%d %d %d %d %d", &interGrafica, &intelArtif, &encap, &inden, &structs);

    if((interGrafica == 1 || intelArtif == 1) && (encap == 1 && inden == 1) && structs == 1){
        printf("AVALIADO \n");
    }else{
        printf("0 \n");
    };
}