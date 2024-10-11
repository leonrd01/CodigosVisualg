algoritmo "MERCADO"

tipo

    cadastrosP = registro
       codigo,quantidade,validade: inteiro
       nome,sessao:caractere
       valor,peso:real
    fimregistro
    
var

   funcao calcP(v,q:real):real
   inicio
         retorne v*q
   fimfuncao
   
   funcao testV(d,va:inteiro):caractere
   inicio
         se d > va entao
           retorne "*PRODUTO FORA DA VALIDADE*"
         senao
           retorne "*PRODUTO NA VALIDADE*"
         fimse
   
   fimfuncao
   
   cadP: vetor[1..2] de cadastrosP
   sessoes: vetor[1..2] de caractere
   opc,cont,pesq,qntV,dia:inteiro
   R:caractere
   
inicio
     repita
      limpatela
      escreval("--------- MERCADO ---------")
      escreval("")
      escreval("[1] CRIAR SESSÕES")
      escreval("[2] CADASTRAR PRODUTOS ")
      escreval("[3] PESQUISAR PRODUTO")
      escreval("[4] VENDAS ")
      escreval("[5] SAIR ")
      escreval("")
      escreval("Escolha uma das opções para continuar: ")
          leia(opc)
          
      escolha opc

             caso 1
                 cont <- 1
                 repita
                 limpatela
                 escreval("--------- SESSÕES ---------")
                 escreval("")
                 escreval("Digite o nome da sessão que deseja criar ")
                     leia(sessoes[cont])
                 escreval("Deseja criar outra sessão? [S/N]")
                     leia(R)
                 cont <- cont + 1
                 ate maiusc(R) = "N"
                 
             caso 2
                 cont <- 1
                 repita
                 limpatela
                 escreval("--------- CADASTRO DE PRODUTOS ---------")
                 escreval("")
                 escreval("- PREENCHA COM OS DADOS DO PRODUTO ABAIXO")
                 escreval("")
                 escreva("CÓDIGO: ")
                    leia(cadP[cont].codigo)
                 escreva("NOME: ")
                    leia(cadP[cont].nome)
                 escreva("SESSÃO: ")
                    leia(cadP[cont].sessao)
                 escreva("VALOR: ")
                    leia(cadP[cont].valor)
                 escreva("QUANTIDADE: ")
                    leia(cadP[cont].quantidade)
                 escreva("VALIDADE: ")
                    leia(cadP[cont].validade)
                 escreva("PESO: ")
                    leia(cadP[cont].peso)
                 escreval("Deseja cadastra outro produto? [S/N]")
                     leia(R)
                 cont <- cont + 1
                 ate (maiusc(R) = "N") ou (cont > 2)

             caso 3
                 repita
                 limpatela
                 escreval("--------- PESQUISA ---------")
                 escreval("")
                 escreval("Digite o código do produto: ")
                     leia(pesq)
                 escreval("")
                 cont <- 0
                   repita
                         cont <- cont + 1
                   ate (cont >= 2) ou (pesq = cadP[cont].codigo)
                 
                 se pesq = cadP[cont].codigo entao
                   escreval("CÓDIGO:",cadP[cont].codigo)
                   escreval("NOME:",cadP[cont].nome)
                   escreval("SESSÃO:",cadP[cont].sessao)
                   escreval("VALOR:",cadP[cont].valor)
                   escreval("QUANTIDADE:",cadP[cont].quantidade)
                   escreval("VALIDADE:",cadP[cont].validade)
                   escreval("PESO:",cadP[cont].peso)
                   escreval("")
                   escreval("deseja testar a validade do produto ? [S/N]")
                       leia(R)
                   se maiusc(R) = "S" entao
                     escreval("Digite qual a data de hoje (DIA): ")
                         leia(dia)
                     escreval("")
                     escreval(testV(dia,cadP[cont].validade))
                   fimse
                 senao
                   escreval("*PRODUTO NÃO ENCONTRADO*")
                 fimse
                 escreval("")
                 escreval("deseja fazer outra pesquisa ? [S/N]")
                     leia(R)
                 ate maiusc(R) = "N"
             
             caso 4
                 repita
                 limpatela
                 escreval("--------- VENDAS ---------")
                 escreval("")
                  escreval("Digite o código do produto: ")
                     leia(pesq)
                 escreval("")
                 cont <- 0
                   repita
                         cont <- cont + 1
                   ate (cont >= 2) ou (pesq = cadP[cont].codigo)

                 se pesq = cadP[cont].codigo entao
                   escreval("CÓDIGO:",cadP[cont].codigo)
                   escreval("NOME:",cadP[cont].nome)
                   escreval("SESSÃO:",cadP[cont].sessao)
                   escreval("VALOR:",cadP[cont].valor)
                   escreval("QUANTIDADE:",cadP[cont].quantidade)
                   escreval("VALIDADE:",cadP[cont].validade)
                   escreval("PESO:",cadP[cont].peso)
                   
                   escreval("")
                   escreva("Digite a quantidade de vendas do produto: ")
                      leia(qntV)
                   escreval("")
                   
                   escreval("Total do lucro do produto R$",calcP(cadP[cont].valor,qntV))
                   
                 senao
                   escreval("*PRODUTO NÃO ENCONTRADO*")
                 fimse
                 escreval("")
                 escreval("deseja fazer outra pesquisa ? [S/N]")
                     leia(R)
                 
                 
                 
                 
                 ate maiusc(R) = "N"
                 
             


      fimescolha
      
     ate opc = 5
      
fimalgoritmo