from endereco import Endereco

def main():
    endereco = Endereco(15, 0, "Costa Rica", "America", "Aracaju", "49075300")

    def testeAtributos(obj):
        print(obj.getNumero())
        print(obj.getComplemento())
        print(obj.getNomeRua())
        print(obj.getBairro())
        print(obj.getCidade())
        print(obj.getCodPostal())

    testeAtributos(endereco)

    print("\n")

    endereco.setNumero(20)
    endereco.setComplemento(5)
    endereco.setNomeRua("Alagoas")
    endereco.setBairro("Siqueira Campos")
    endereco.setCidade("Neopolis")
    endereco.setCodPostal("08734211")

    testeAtributos(endereco)


if __name__=="__main__": 
    main()