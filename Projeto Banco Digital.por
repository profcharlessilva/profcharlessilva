programa {

    //banco de infomações
      inteiro bag = 1, bcc=1, bsn=123, i
      caracter voltar
      real saldo = 10000, limite = 500, total = limite + saldo, deposito, saque
      real credito[1000], debito[1000]

  funcao vetor(){

      para(i=1; i<1000; i++){

        credito[i] = 0.0

      }

      para (i=1; i<1000; i++){

          debito[i] = 0.0
      }


  }
  
  funcao inicio(){

    inteiro ag, cc, sn
    
    faca{

    escreva("\n----------- Bem vindo ao Bando Senac ----------\n\n")
    escreva("Informe o número da agência: ")
		leia(ag)
		escreva("Informe o número da conta: ")
		leia(cc)	
		escreva("Informe a senha: ")
		leia(sn)	
    limpa()
    
    }enquanto(bag != ag ou bcc != cc ou bsn != sn)

    menu()

  }


  funcao menu() {
    
    inteiro op
		
    escreva("\nEscolha Uma Operação abaixo\n")
		escreva("\n1 - Saldo | 2 - Extrato | 3 - Saque | 4 - Depósito | 5 - Sair\n")
    escreva("\nOpção: ")
		leia(op)
		limpa()

    escolha(op){

      caso 1:
      saldo()
      pare

      caso 2:
      extrato()
      pare
      
      caso 3:
      saque()
      pare
      
      caso 4:
      deposito()
      pare

      caso 5:
      pare

      caso contrario: escreva("Opção Inválida, tente novamente")
    
    }
	
  }

  funcao saldo(){

      faca {

        escreva("Saldo: ", saldo, "\n")
        escreva("Limite: ", limite, "\n")
        escreva("Total: ", total, "\n\n")
        escreva("---------------\n\n")
        
        
        escreva("Deseja voltar ao menu principal s|n? ")
        leia(voltar)
      
      }
      enquanto (voltar != 's')
      limpa()
      menu()
      
    }

  
  funcao extrato(){

      faca {

        escreva(saldo + deposito,"\n\n")
        escreva("----------------\n\n")
       

        escreva("Deseja voltar ao menu principal s|n? ")
        leia(voltar)
      
      }
      enquanto (voltar != 's')
      limpa()
      menu()
    }
  
  funcao deposito(){

      faca {
        
        escreva("Qual valor deseja depositar: ")
        leia(deposito)
        escreva("------------------\n\n")

        para(inteiro i = 0; i < 1000; i++){
			
      se(credito[i] == 0){ 
        credito[i] = deposito
				pare
				}
        }
        escreva("Deseja voltar ao menu principal s|n? ")
        leia(voltar)
      
      }
      enquanto (voltar != 's')
      limpa()
      menu()
    }

funcao saque(){

      faca {
        
        escreva("Qual valor você deseja sacar: ")
        leia(saque)
        escreva("------------------\n\n")
      

        se(saldo < saque){

          escreva("Valor indisponivel")

        }

        saque - saldo

        para(inteiro i = 0; i < 1000; i++){
			
            se(debito[i] == 0){ 
              debito[i] = saque
				      pare
				}
        
        }

        escreva("Deseja voltar ao menu principal s|n? ")
        leia(voltar)
      
      }
      enquanto (voltar != 's')
      limpa()
      menu()
    }



}
