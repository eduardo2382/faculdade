class Item():
    def __init__(self, titAtr, reprodAtr, comentAtr, possuoAtr):
        self.__titulo = titAtr
        self.__reproducao = reprodAtr
        self.__comentario = comentAtr
        self.__possuo = possuoAtr  

    def getTitulo(self):
        return self.__titulo
    
    def getReproducao(self):
        return self.__reproducao
    
    def getPossuo(self):
        return self.__possuo
    
    def getComentario(self):
        return self.__comentario
    
    def setTitulo(self, newTitulo):
        self.__titulo = newTitulo
    
    def setReproducao(self, newRepro):
        self.__reproducao = newRepro
    
    def setPossuo(self, newPossuo):
        self.__possuo = newPossuo
    
    def setComentario(self, newComent):
        self.__comentario = newComent

    def imprimeItem(self):
        print("Titulo: " + self.__titulo +  
              "\nReproducao: " + str(self.__reproducao) +  
              "\nPossuo: " + str(self.__possuo) + 
              "\nComentario: " + self.__comentario)