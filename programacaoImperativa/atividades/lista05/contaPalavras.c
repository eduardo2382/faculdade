#include <stdio.h>

int main()
{
	char string[500];
	int palavras = 1;
	
	fgets(string, 500, stdin);
	
	for(int i = 0; string[i+1] != '\0'; i++){		
		if(string[i] != 32 && string[i+1] == 32){
			palavras = palavras + 1;
		}
	}
	
	printf("%d\n", palavras);
}
