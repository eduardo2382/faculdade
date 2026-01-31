from cd import CD
from dvd import DVD

class Catalogo():
    def __init__(self):
        self.__catalogoList = list()

    def insertItem(self, item):
        self.__catalogoList.append(item)

    def removeItem(self, item):
        if item in self.__catalogoList:
            self.__catalogoList.remove(item)
            return True
        else:
            return False

    def hasItens(self):
        if(len(self.__catalogoList) > 0):
            return True
        else:
            return False
        
    def listItens(self):
        for item in self.__catalogoList:
            if(isinstance(item, CD)):
                item.imprime()
                print('\n')
        
        for item in self.__catalogoList:
            if(isinstance(item, DVD)):
                item.imprime()
            
    def hasDeterminatedItem(self, itemSearch):
        if itemSearch in self.__catalogoList:
            return True
        else:
            return False

    