from catalogo import Catalogo
from cd import CD

def main():
    catalogoTest = Catalogo()

    cd1 = CD("Nome Cd 1", "Artista 1", 33, "CD Bom", True)
    cd2 = CD("Nome Cd 2", "Artista 2", 20, "CD Bom", True)
    cd3 = CD("Nome Cd 3", "Artista 3", 87, "CD Bom", False)

    catalogoTest.insertCd(cd1)
    catalogoTest.insertCd(cd2)
    catalogoTest.insertCd(cd3)

    print("\nListar CD")
    catalogoTest.listCds()

    print("\nHa CDs")
    print(catalogoTest.hasCds())

    catalogoTest.removeCd(cd1)

    print("\nHa determinado CD")
    catalogoTest.hasCertainCd(cd3)

    print("\nPossuo esse CD")
    catalogoTest.possesCd(cd2)

    print("\nList CDs que possuo")
    catalogoTest.listPosses()

    
    
if __name__ == "__main__":
    main()