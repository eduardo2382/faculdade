from estudante import Estudante
from studentbook import StudentBook

def main():
    def showStudents():
        for student in studentBook.getStudentBook():
            print(student.listAtributos())
            print("\n")

    studentBook = StudentBook()
    aluno1 = Estudante("Eduardo", 2025123, 20)
    aluno2 = Estudante("Joao", 2025987, 0)
    aluno3 = Estudante("Maria", 2025456, 90)
    aluno4 = Estudante("Antonio", 2024123, 79)

    studentBook.storeStudent(aluno1)
    studentBook.storeStudent(aluno2)
    studentBook.storeStudent(aluno3)

    print("Listando os estudantes com listStudants: ")
    studentBook.listStudents()
    print("\n")

    print("Numero de Estudantes: " + str(studentBook.numberOfStudents()))
    print("\n")

    print(studentBook.showStudent(2).listAtributos())
    print("\n")

    if studentBook.removeStudent(aluno4):
        print("Estudante removido!")
        print("\n")
    else:
        print("Estudante nao consta na lista.")
        print("\n")

    print("Listando os estudantes com listStudantsFor: ")
    studentBook.listStudentsFor()
    print("\n")

    print("Testando o 'hasStudent':")
    print("Há estudantes na lista? " + str(studentBook.hasStudents()))
    
    studentBook.removeStudent(aluno1)
    studentBook.removeStudent(aluno2)
    studentBook.removeStudent(aluno3)

    print("Há estudantes na lista? " + str(studentBook.hasStudents()))
    print("\n")

    studentBook.storeStudent(aluno1)
    studentBook.storeStudent(aluno2)
    studentBook.storeStudent(aluno3)

    print("Testando o 'compareStudent':")
    print("Aluno1 esta na lista? " + str(studentBook.compareStudent(aluno1)))
    print("Aluno4 esta na lista? " + str(studentBook.compareStudent(aluno4)))

if __name__ == "__main__":
    main()