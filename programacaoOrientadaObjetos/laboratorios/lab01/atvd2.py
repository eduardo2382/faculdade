numero = int(input("Digite um numero: "))

def divisivel(num, div):
    return (num%div)==0

print(f"O numero {numero} é divisivel por 3? {divisivel(numero, 3)}")
print(f"O numero {numero} é divisivel por 7? {divisivel(numero, 7)}")