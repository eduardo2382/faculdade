#include <stdio.h>

int main()
{
	int num, cont;
	
	scanf("%d", &num);
	
	cont = 1;
	
	while(cont <= num){
		if((num%cont) == 0){
			printf("%d\n", cont);
		}
		
		cont = cont + 1; 
	}
		
}

