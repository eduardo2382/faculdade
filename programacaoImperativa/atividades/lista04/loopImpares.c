#include <stdio.h>

int main()
{
	int i, f;
	scanf("%d", &i);
	scanf("%d", &f);
	
	while(i<=f){
		if((i%2) != 0){
			printf("%d\n", i);
		}
		
		i = i + 1;
	}
}

