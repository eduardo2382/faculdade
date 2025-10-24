import math

a = float(input("Valor de a: "))
b = float(input("Valor de b: "))
c = float(input("Valor de c: "))

discriminante = (b*b)-(4*a*c)

if(discriminante<0):
    print("Não existem raizes reais.")
else:
    raiz1 = ((-b)+(math.sqrt(discriminante))) / (2*a)
    
    raiz2 = ((-b)-(math.sqrt(discriminante))) / (2*a)

    if(raiz1==raiz2):
        print(f"A raiz da equacao é: {raiz1}")
    else:
        print(f"Raiz 1 da equacao: {raiz1}")
        print(f"Raiz 2 da equacao: {raiz2}")
