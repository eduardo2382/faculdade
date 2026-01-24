class Catalogo():
    def __init__(self):
        self.__catalogoList = list()

    def insertCd(self, cd):
        self.__catalogoList.append(cd)

    def removeCd(self, cd):
        if cd in self.__catalogoList:
            self.__catalogoList.remove(cd)
            return True
        else:
            return False
        
    def listCds(self):
        for cd in self.__catalogoList:
            cd.imprime()

    def hasCds(self):
        if(len(self.__catalogoList) > 0):
            return True
        else:
            return False
        
    def hasCertainCd(self, cdSearch):
        if cdSearch in self.__catalogoList:
            for cd in self.__catalogoList:
                if(cd.getTitulo() == cdSearch.getTitulo()):
                    cd.imprime()
        else:
            return False
        
    def possesCd(self, cdSearch):
        if cdSearch in self.__catalogoList:
            for cd in self.__catalogoList:
                if(cd.getTitulo() == cdSearch.getTitulo() and cd.getPossuo() == True):
                    cdSearch.imprime()

        else:
            return False
        
    def listPosses(self):
        for cd in self.__catalogoList:
            if(cd.getPossuo() == True):
                cd.imprime()