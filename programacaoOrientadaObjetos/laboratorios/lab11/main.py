from impressora import Impressora

def main():
    impressora = Impressora('epson', 'tanque', 100)

    impressora.imprimeAtributos()
    print('\n')

    try:
        impressora.aumentaEstoque(10)
        impressora.imprimeAtributos()
        print('\n')
    except:
        print("Erro ao aumentar estoque")
        print('\n')

    try:
        impressora.aumentaEstoque(-10)
        impressora.imprimeAtributos()
        print('\n')
    except:
        print("Erro ao aumentar estoque")
        print('\n')


    try:
        impressora.diminuiEstoque(10)
        impressora.imprimeAtributos()
        print('\n')
    except:
        print("Erro ao diminuir estoque")
        print('\n')
        

    

if __name__ == "__main__":
    main()