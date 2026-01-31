from cd import CD
from dvd import DVD
from catalogo import Catalogo

def main():
 
    #DVD: titAtr, reprodAtr, comentAtr, possuoAtr, dirAtr

    catalogo = Catalogo()

    cd1 = CD("Titulo CD 1", 10, "Comentario CD 1", True, "Artista CD 1")
    cd2 = CD("Titulo CD 2", 23, "Comentario CD 2", False, "Artista CD 2")
    dvd1 = CD("Titulo DVD 1", 10, "Comentario DVD 1", True, "Artista DVD 1")
    dvd2 = CD("Titulo DVD 2", 23, "Comentario DVD 2", False, "Artista DVD 2")

    catalogo.insertItem(cd1)
    catalogo.insertItem(cd2)
    catalogo.insertItem(dvd1)
    catalogo.insertItem(dvd2)

    catalogo.listItens()

    catalogo.removeItem(cd1)
    catalogo.listItens()

    print("Ha itens no catalogo: ")
    print(catalogo.hasItens())
    print('\n')

    print("Ha o item " + cd2.getTitulo())
    print(catalogo.hasDeterminatedItem(cd1))
    

if __name__ == "__main__":
    main()