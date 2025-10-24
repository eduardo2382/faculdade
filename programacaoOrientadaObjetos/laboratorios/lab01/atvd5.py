numero = int(input("Digite um numero, maior ou igual a zero, para calcular o seu fatorial: "))

while(numero<0):
    print("Numero invalido!")
    numero = int(input("Digite um numero, maior ou igual a zero, para calcular o seu fatorial: "))

def fatorial(limite):
    fatorial = 1
    for num in range(1, limite+1):
        fatorial = fatorial * num

    return fatorial
    
print(f"O fatorial de {numero} é {fatorial(numero)}")