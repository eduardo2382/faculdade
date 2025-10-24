nota1 = float(input("Digite a nota 1:"))
nota2 = float(input("Digite a nota 2:"))
nota3 = float(input("Digite a nota 3:"))

def notaFinal(n1, n2, n3):
    final1 = n1*0.3
    final2 = n2*0.2
    final3 = n3*0.5

    final = (final1+final2+final3)/1

    return final


print(f"A nota final é: {notaFinal(nota1, nota2, nota3)}")

if(notaFinal(nota1, nota2, nota3)>=5):
    print("Aluno Aprovado!")
else:
    print("Aluno Reprovado!")
