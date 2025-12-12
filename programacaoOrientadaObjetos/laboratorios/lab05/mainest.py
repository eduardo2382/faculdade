from estudante import Estudante

def main():
    estudante = Estudante(15, 0, "Costa Rica", "America", "Aracaju", "49075300", "Eduardo", "20140256", 0)

    def testeAtributos(obj):
        print(obj.getNome())
        print(obj.getMatricula())
        print(obj.getCreditos())
        print(obj.getEndereco())

    testeAtributos(estudante)

    print("\n")

    estudante.setNome("Mario")
    estudante.setMatricula("20250075519")
    estudante.setCreditos(203)
    estudante.alteraEndereco(30, 0, "Colombia", "Siqueira Campos", "Maceio", "50097800")

    estudante.imprimAtributos()

    estudante.incremento("abc")

    estudante.getEndereco()


if __name__=="__main__": 
    main()