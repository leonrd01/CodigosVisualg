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
   vetC: vetor[1..2] de cad
   clientes: vetor[1..2] de caractere
   i:inteiro
   quant,resp,codP:inteiro
   //coloquei a saida de dados em procedimento caso agente precise usar novamente!!
procedimento topo()
inicio
   escreval("=========saida de dados===============")
   escreval("")
   escreval("CÓDIGO: ",vetC[i].codigo)
   escreval("NOME : ",vetC[i].nome)
   escreval("ANO DE FABRICAÇÃO: ",vet[i].FABRICACAO)
   escreval("FORNECEDOR: ",vetC[i].FORNECEDOR)
   escreval("QUANTIDADE: ",veCt[i].quantidade)
   escreval("local de armazrnagem: ",vetC[i].armazenagem)
   escreval("valor: ",vetC[i].valor)
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
             limpatela
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
                  escreval(" PREENCHA COM OS DADOS ABAIXO: ")
                  escreval("")
                  escreval("")
                  escreva("CODIGO: ")
                  leia (vetC[i].codigo)
                  escreva("NOME: ")
                  leia(vetC[i].nome)
                  escreva("DATA DE FABRICAÇÃO: ")
                  leia(vetC[i].fabricacao)
                  escreva("NOME DO FORNECEDOR: ")
                  leia(vetC[i].fornecedor)
                  escreva("QUANTIDADE: ")
                  leia(vetC[i].quantidade)
                  escreva("LOCAL DE ARMAZENAGEM : ")
                  leia(vetC[i].armazenagem)
                  escreva("VALOR : ")
                  leia(vetC[i].valor)

               fimpara
            // SAÍDA DE PRODUTOS
            caso 2
            
               escreva("Digite o código do produto que deseja realizar o pedido: ")
                  leia(codP)
               escreva("Digite o nome do cliente :")
                  leia(clientes[1])
               para i <- 1 ate 2 faca
                  se codP = vetC[i].codigo entao
                    escreval("CÓDIGO: ",vetC[i].codigo)
                    escreval("NOME DO PRODUTO: ",vetC[i].nome)
                    escreval("ESTOQUE: ",vetC[i].quantidade)
                    escreval("VALOR: ",vetC[i].valor)
                  senao
                    escreval("produto não encontrado!!!")
                  fimse
               fimpara
               escreva("Digite a quantidade que deseja: ")
                   leia(quant)
               se quant > vetC[i].quantidade entao
                  escreval("quantidade de itens acima da quantidade de estoque da loja!!")
               senao
                  se quant < 0 entao
                     escreval(" escreva um numero positivo!!!")
                  fimse
               fimse
               
               
               
               
               
               
               
               
               
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