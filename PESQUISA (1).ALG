Algoritmo "Pesquisa"

var

inicio

procedimento pesquisar()
var
codP, i: inteiro

inicio
   escreva("Digite o c�digo : ")
   leia(codP)
   i <- 1
   enquanto (codP <> vetC[i].codigo) e (i <= 1) faca
      i <- i + 1
   fimenquanto

   se codP = vetC[i].codigo entao
      limpatela
      escreval("Item possui cadastro")
   senao
        escreval("Item n�o possui cadastro")
   fimse
   
fimprocedimento



Fimalgoritmo