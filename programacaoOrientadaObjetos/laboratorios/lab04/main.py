from estudante import Estudante

def main():
    nomeEstudante = input("Entre com o Nome do Estudante: ")
    matriculaEstudante = input("Entre com a Matricula do Estudante: ")
    emailEstudante = input("Entre com o Email do Estudante: ")

    estudante1 = Estudante(nomeEstudante, matriculaEstudante, emailEstudante)

    print("\nTESTANDO ATRIBUTOS INICIAS DA CLASSE ESTUDANTE")
    print("Nome Estudante1: " + estudante1.getNome())
    print("Matricula Estudante1: " + estudante1.getMatricula())
    print("Email Estudante1: " + estudante1.getEmail())
    print("Curso Estudante1: " + estudante1.getCurso())
    print("Creditos Estudante1: " + str(estudante1.getCreditos()))
    
    """
    print("\nTESTANDO MUDANCA DE ATRIBUTOS")
    estudante1.setNome(input("Novo nome Estudante1: "))
    estudante1.setMatricula(input("Nova matricula Estudante1: "))
    estudante1.setEmail(input("Novo email Estudante1: "))
    estudante1.setCurso(input("Novo curso Estudante1: "))
    estudante1.setCreditos(int(input("Novos creditos Estudante1: ")))

    estudante1.imprimAtributos()

    estudante1.addCreditos(int(input("\nQuantos creditos deseja adicionar? ")))
    print("Creditos Atuais: " + str(estudante1.getCreditos()))
    """

    print("\nALTERANDO O NOME")
    estudante1.__nome = "Gabriel"
    print(estudante1._nome)
    print(estudante1.getNome())

if __name__=="__main__": 
    main()