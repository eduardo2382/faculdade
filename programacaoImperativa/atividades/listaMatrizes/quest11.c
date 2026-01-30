#include <stdio.h>

int main(){
    int idades[8];
    int disc[5] = {001, 002, 003, 004, 005};
    int provas[8][5] = {
        {3, 1, 4, 0, 2},
        {5, 2, 0, 3, 1},
        {4, 3, 1, 5, 0},
        {2, 0, 3, 1, 4},
        {1, 5, 2, 4, 3},
        {0, 4, 5, 2, 1},
        {3, 2, 0, 1, 5},
        {4, 1, 3, 0, 2}
    };

    int menosTres[8][2];

    int codDisc, quantAlunos = 0;

    for(int i = 0; i <= 7; i++){
        scanf("%d", &idades[i]);
    }

    printf("Digite o codigo da disciplina: ");
    scanf("%d", &codDisc);

    for(int d = 0; d <= 4; d++){
        if(disc[d] == codDisc){
            for(int l = 0; l <= 7; l++){
                for(int c = 0; c <= 4; c++){
                    if((idades[l] >= 18) && (idades[l] <= 25) && (c == d) && (provas[l][c] >= 2)){
                        quantAlunos += 1;
                    }

                    if(provas[l][c] < 3){
                        menosTres[l][0] = idades[l];
                        menosTres[l][1] = disc[c];
                    }
                }
            }
        }
    }

    printf("Quantidade de alunos: %d\n", quantAlunos);
    
    for(int i = 0; i <= 7; i++){
        printf("%d - 00%d\n", i+1, menosTres[i][1]);
    }
}