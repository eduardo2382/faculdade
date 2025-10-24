#Atividade 2
def impar(num):
    return (num%2) == 1

x = int(input("Digite um numero: "))
print("O numero digitado é impar? ", impar(x))

#atividade 3

def impares(numMax):
    somaImpares = 0
    
    for numero in range(1, numMax+1):
        if(impar(numero)):
            somaImpares = somaImpares + numero
            
    return somaImpares
    

y = int(input("Digite um numero: "))

print("A soma dos impares entre 1 e o numero digitado é: ", impares(y))