algoritmo "melhorlivro"
tipo
    livro = registro
      titulo: caractere
      anopublicado: inteiro
      autor:caractere
     fimregistro
var
   livros: vetor[1..5] de livro
   cont:inteiro

inicio
      para cont <- 1 ate 5 faca
          escreva("Digite o título do livro: ")
             leia(livros[cont].titulo)
          escreva("Digite o ano em que foi publicado: ")
             leia(livros[cont].anopublicado)
          escreva("Digite o nome do autor: ")
             leia(livros[cont].autor)
          limpatela
      fimpara
      
      escreval(" ")
      escreval("--------------------------------------")
      escreval("- LIVROS PUBLICADOS APÓS OS ANOS 2000:")
      para cont <- 1 ate 5 faca
          se livros[cont].anopublicado > 2000 entao
            escreval(livros[cont].titulo)
          fimse
      fimpara

fimalgoritmo