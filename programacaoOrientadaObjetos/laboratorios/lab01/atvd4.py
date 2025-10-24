numero = int(input("Digite um numero, maior ou igual a zero, para calcular o seu fatorial: "))

while(numero<0):
    print("Numero invalido!")
    numero = int(input("Digite um numero, maior ou igual a zero, para calcular o seu fatorial: "))

def fatorial(num):
    if(num>0):
        return num*fatorial(num-1)
    else:
        return 1
    
print(f"O fatorial de {numero} é {fatorial(numero)}")