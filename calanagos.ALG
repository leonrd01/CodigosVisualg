algoritmo "CARANGOS_S/A"
tipo
   cad=registro
      codigo:inteiro
      nome:caractere
      fabricacao:real
      fornecedor:caractere
      quantidade:inteiro
      armazenagem:caractere
      valor:real
   fimregistro
var
   opc,opc2:real
   vet:vetor[1..2] de cad
   i:inteiro
   //coloquei a saida de dados em procedimento caso agente precise usar novamente!!
procedimento topo()
inicio
   escreval("=========saida de dados===============")
   escreval("")
   escreval("CÓDIGO: ",vet[i].codigo)
   escreval("NOME : ",vet[i].nome)
   escreval("ANO DE FABRICAÇÃO: ",vet[i].FABRICACAO)
   escreval("FORNECEDOR: ",vet[i].FORNECEDOR)
   escreval("QUANTIDADE: ",vet[i].quantidade)
   escreval("local de armazrnagem: ",vet[i].armazenagem)
   escreval("valor: ",vet[i].valor)
   escreval("")
fimprocedimento
inicio
   REPITA
      limpatela
      escreval("----------------------------------------------------------")
      escreval("                    *CARANGOS S/A*                                          ")
      escreval("__________________________________________________________")
      escreval("")
      escreval("                        *MENU*                           ")
      escreval("")
      escreval("")
      escreval("  [1]OPERACIONAL    [2]FINANCEIRO   [3]RECURSOS HUMANOS   ")
      escreval("")
      escreval("")
      leia(opc)

      escolha (opc)

         // SETOR OPERACIONAL---------------------------------------
      caso 1
         REPITA

            escreval("------------------------------------------")
            escreval("             OPERACIONAL                  ")
            escreval("------------------------------------------")
            escreval("")
            escreval("[1] CADASTRO DE PRODUTOS")
            escreval("[2] SAÍDA DE PRODUTOS")
            escreval("[3] PESQUISAR PRODUTO")
            escreval("[4] VOLTAR ")
            escreval("")
            escreval("")
            leia(opc2)

            escolha (opc2)

               // CADASTRO DE PRODUTOS
            caso 1
               para i de 1 ate 2 faca
                  escreval("-------------------------------")
                  escreval("           CADASTRO            ")
                  escreval("-------------------------------")
                  escreval("")
                  escreval("")
                  escreval("- PREENCHA COM OS DADOS ABAIXO: ")
                  escreval("")
                  escreval("")
                  escreval("CODIGO: ")
                  leia (vet[i].codigo)
                  escreva("NOME: ")
                  leia(vet[i].nome)
                  escreva("DATA DE FABRICAÇÃO: ")
                  leia(vet[i].fabricacao)
                  escreva("NOME DO FORNECEDOR: ")
                  leia(vet[i].fornecedor)
                  escreva("QUANTIDADE: ")
                  leia(vet[i].quantidade)
                  escreva("LOCAL DE ARMAZENAGEM : ")
                  leia(vet[i].armazenagem)
                  escreva("VALOR : ")
                  leia(vet[i].valor)

               fimpara
               // SAÍDA DE PRODUTOS
            caso 2
            para i de 1 ate 2 faca
               topo()
            fimpara

            // PESQUISA DE PRODUTOS
         caso 3


         fimescolha
      ATE opc2 = 4
      //----------------------------------------------------------------



      // SETOR FINANCEIRO-----------------------------------------------
   caso 2
      limpatela


      //----------------------------------------------------------------



      // SETOR RH-------------------------------------------------------
   caso 3
      limpatela


      //----------------------------------------------------------------





   fimescolha

ATE opc = 4




fimalgoritmo