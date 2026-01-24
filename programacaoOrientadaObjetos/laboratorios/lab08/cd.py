import random

class CD():
    def __init__(self, titAtr, artAtr, reprodAtr, comentAtr, possuoAtr):
        self.__titulo = titAtr
        self.__artista = artAtr
        self.__reproducao = reprodAtr
        self.__trilhas = self.__generateTrack()
        self.__comentario = comentAtr
        self.__possuo = possuoAtr        

    def __generateTrack(self):
        return random.randint(1, 100)
    
    def getTitulo(self):
        return self.__titulo
    
    def getReproducao(self):
        return self.__reproducao
    
    def getArtista(self):
        return self.__artista
    
    def getPossuo(self):
        return self.__possuo
    
    def getComentario(self):
        return self.__comentario
    
    def getTrilhas(self):
        return self.__trilhas
    
    def setTitulo(self, newTitulo):
        self.__titulo = newTitulo
    
    def setReproducao(self, newRepro):
        self.__reproducao = newRepro
    
    def setArtista(self, newArtista):
        self.__artista = newArtista
    
    def setPossuo(self, newPossuo):
        self.__possuo = newPossuo
    
    def setComentario(self, newComent):
        self.__comentario = newComent
    
    def setTrilhas(self, newTrilhas):
        self.__trilhas = newTrilhas
    
    def imprime(self):
        print("Titulo: " + self.__titulo + 
              "\nArtista: " + self.__artista + 
              "\nReproducao: " + str(self.__reproducao) + 
              "\nTrilhas: " + str(self.__trilhas) + 
              "\nPossuo: " + str(self.__possuo) + 
              "\nComentario: " + self.__comentario)