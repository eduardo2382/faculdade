from endereco import Endereco

class Estudante():
    def __init__(self,num, compl, nrua,bai,cid,cod,nom,mat,cred): 
        self.__endereco = Endereco(num, compl, nrua,bai,cid,cod) 
        self.__nome = nom 
        self.__matricula = mat 
        self.__creditos = cred

    def alteraEndereco(self, num, compl, nrua, bai, cid, cod):
        self.__endereco = Endereco(num, compl, nrua, bai, cid, cod)

    def getEndereco(self):
        return "Numero: " + str(self.__endereco.getNumero()) + "\nComplemento: " + str(self.__endereco.getComplemento()) + "\nNome Rua: " + self.__endereco.getNomeRua() + "\nBairro: " + self.__endereco.getBairro() + "\nCidade: " + self.__endereco.getCidade() + "\nCodigo Postal: " + str(self.__endereco.getCodPostal())
    
    def getNome(self):
        return self.__nome

    def getMatricula(self):
        return self.__matricula
    
    def getCreditos(self):
        return self.__creditos
    
    def setNome(self, newNome):
        self.__nome = newNome
    
    def setMatricula(self, newMatricula):
        self.__matricula = newMatricula

    def setCreditos(self, newCreditos):
        self.__creditos = newCreditos

    def imprimAtributos(self):
        print("Nome: " + self.__nome + 
              "\nMatricula: " + self.__matricula + 
              "\nCreditos: " + str(self.__creditos) + 
              "\nEndereco: " + self.getEndereco())
        
    def incremento(self, incr):
        self.__endereco.setComplemento(incr)
