#include <stdio.h>

int main()
{
	int quant, total;
	total = 0;
	
	scanf("%d", &quant);
	
	for(int i = quant; i>0; i--){
		int num;
		scanf("%d", &num);
		
		total = total + num;
	}
	
	printf("%d\n", total);
}