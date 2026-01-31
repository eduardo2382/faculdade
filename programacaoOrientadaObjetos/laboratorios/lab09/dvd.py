from item import Item

class DVD(Item):
    def __init__(self,titAtr, reprodAtr, comentAtr, possuoAtr, dirAtr):
        Item.__init__(self, titAtr, reprodAtr, comentAtr, possuoAtr)
        self.__diretor = dirAtr
    
    def getDiretor(self):
        return self.__diretor
    
    def setDiretor(self, newDiretor):
        self.__diretor = newDiretor
    
    def imprime(self):
        Item.imprimeItem(self)
        print("Diretor: " + self.__diretor)