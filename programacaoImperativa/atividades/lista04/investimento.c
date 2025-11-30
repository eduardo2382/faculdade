#include <stdio.h>

int main()
{
	float invInic, juros, rendimento, montante;
	int anos, periodo;
	
	
	scanf("%f %f %d", &invInic, &juros, &anos);
	
	rendimento = 0;
	montante = 0;
	
	periodo = (anos*12)/3;
	
	for(int i = 1; i<=periodo; i++){
		if(montante != 0){
			rendimento = montante * juros;
			montante = montante + rendimento;
		}else{
			rendimento = invInic * juros;
			montante = invInic + rendimento;
		}
		
		printf("Rendimento: %.2f Montante: %.2f\n", rendimento, montante);
	}
}