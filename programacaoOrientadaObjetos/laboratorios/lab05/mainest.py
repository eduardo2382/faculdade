from estudante import Estudante

def main():
    estudante = Estudante(15, 0, "Costa Rica", "America", "Aracaju", "49075300", "Eduardo", "20140256", 0)

    def testeAtributos(obj):
        print(obj.getNome())
        print(obj.getMatricula())
        print(obj.getCreditos())
        print(obj.getEndereco())

    testeAtributos(Estudante)

    print("\n")



    testeAtributos(estudante)


if __name__=="__main__": 
    main()