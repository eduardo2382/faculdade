import random
from item import Item

class CD(Item):
    def __init__(self, titAtr, reprodAtr, comentAtr, possuoAtr, artAtr):
        Item.__init__(self, titAtr, reprodAtr, comentAtr, possuoAtr)
        self.__artista = artAtr
        self.__trilhas = self.__generateTrack()     

    def __generateTrack(self):
        return random.randint(1, 100)
    
    def getArtista(self):
        return self.__artista
    
    def getTrilhas(self):
        return self.__trilhas
    
    def setArtista(self, newArtista):
        self.__artista = newArtista
    
    def setTrilhas(self, newTrilhas):
        self.__trilhas = newTrilhas
    
    def imprime(self):
        Item.imprimeItem(self)
        print("Artista: " + self.__artista + 
              "\nTrilhas: " + str(self.__trilhas))