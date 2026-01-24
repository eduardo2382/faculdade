from cd import CD

def main():
    cdTeste = CD("Nome Cd", "Artista", 33, "CD Bom", True)

    print("----- Teste Classe CD -----")
    print(cdTeste.getTitulo())
    print(cdTeste.getArtista())
    print(cdTeste.getReproducao())
    print(cdTeste.getTrilhas())
    print(cdTeste.getComentario())
    print(cdTeste.getPossuo())

    cdTeste.setTitulo("Novo Nome")
    cdTeste.setArtista("Novo Artista")
    cdTeste.setReproducao(98)
    cdTeste.setTrilhas(34)
    cdTeste.setComentario("Novo comentario")
    cdTeste.setPossuo(False)

    cdTeste.imprime()


if __name__ == "__main__":
    main()