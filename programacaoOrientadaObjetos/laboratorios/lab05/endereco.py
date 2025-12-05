class Endereco():
    def __init__(self, num, compl, nrua, bai, cid, cod): 
        self.__numero = num 
        self.__complemento = compl
        self.__nomeRua = nrua 
        self.__bairro = bai 
        self.__cidade = cid 
        self.__codPostal = cod 

    def getNumero(self):
        return self.__numero
    
    def getComplemento(self):
        return self.__complemento
    
    def getNomeRua(self):
        return self.__nomeRua
    
    def getBairro(self):
        return self.__bairro
    
    def getCidade(self):
        return self.__cidade
    
    def getCodPostal(self):
        return self.__codPostal
    
    def setNumero(self, newNum):
        self.__numero = newNum
    
    def setComplemento(self, newCompl):
        self.__complemento = newCompl
    
    def setNomeRua(self, newNomeRua):
        self.__nomeRua = newNomeRua
    
    def setBairro(self, newBairro):
        self.__bairro = newBairro
    
    def setCidade(self, newCidade):
        self.__cidade = newCidade
    
    def setCodPostal(self, newCodPostal):
        self.__codPostal = newCodPostal

    def imprimAtributos(self):
        print("Numero: " + self.__numero + 
              "\nComplemento: " + self.__complemento +
              "\nNome Rua: " + self.__nomeRua +
              "\nBairro: " + self.__bairro +
              "\nCidade: " + self.__bairro +
              "\nCodigo Postal: " + self.__codPostal)

    def incremento(self): 
        self.__complemento = self.__complemento + 1