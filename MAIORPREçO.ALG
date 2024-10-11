algoritmo "MaiorPreço"
tipo
    produto = registro
       codigo: inteiro
       nome:caractere
       preco:real
       peso:real
    fimregistro
var
   produtos: vetor[1..3,1..3] de produto
   cont,cont2,maiorcodigo:inteiro
   maiorpreco:real

inicio
      para cont <- 1 ate 3 faca
          para cont2 <- 1 ate 3 faca
              escreva("Digite o código do produto: ")
                 leia(produtos[cont,cont2].codigo)
              escreva("Digite o nome do produto : ")
                 leia(produtos[cont,cont2].nome)
              escreva("Digite o preço do produto :")
                 leia(produtos[cont,cont2].preco)
              escreva("Digite o peso do produto: ")
                 leia(produtos[cont,cont2].peso)
              se produtos[cont,cont2].preco > maiorpreco entao
                maiorpreco <- produtos[cont,cont2].preco
                maiorcodigo <- produtos[cont,cont2].codigo
              fimse
              limpatela
          fimpara
      fimpara
      escreval(" ")
      escreval("Código do produto mais caro: ",maiorcodigo)

fimalgoritmo