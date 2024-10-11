Algoritmo "Pesquisa"

Var
   produto: vetor [1..10] DE inteiro


Inicio

Procedimento Cadastro()
var
   i, j : inteiro
Inicio
   Escreval ("Digite os codigos dos itens:")
   para i de 1 ate 10 faca
      Leia(produto[i])
   fimpara

fimprocedimento


procedimento Ordenacao()

var
   n, i, j: inteiro

inicio
   Para i de 1 ate 9 faca
      para j de i+1 ate 10 faca
         Se produto[i] > produto[j] entao
            n <- produto[i]
            produto[i] <- produto[j]
            produto[j] <- n
         fimse
      fimpara
   fimpara
fimprocedimento

Procedimento Pesquisa()
Var
   produto: vetor [1..10] DE inteiro
   meio,inicial,final: inteiro
   situacao: logico
   item: inteiro
Inicio

   Escreval("Digite o codigo do item a ser pesquisado: ")
   Leia(item)

   inicial <- 1
   final <- 10
   situacao<- falso

   Enquanto (inicial <> final) e (situacao = falso) faca
      meio <- (inicial + final) div 2

      Se produto[meio] = item entao
         situacao <- verdadeiro
      fimse
      Se produto[meio] > item entao
         final <- meio - 1
      senao
         inicial <- meio + 1
      fimse

   fimenquanto


   Se situacao = verdadeiro entao
      ESCREVAL ("PRODUTO ENCONTRADO")
   Senao
      Escreval("Produto Não encontrado")
   fimse

Fimprocedimento

Cadastro()
Ordenacao()
Pesquisa()


Fimalgoritmo