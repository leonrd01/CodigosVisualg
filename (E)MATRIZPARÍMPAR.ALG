algoritmo "MatrizParÍmpar"
var
   mat: vetor[1..100,1..100] de inteiro
   cont,cont2,l,c,par,imp: inteiro
inicio
      escrevaL("--------MATRIZ--------")
      escreval(" ")
      escreval(" - TAMANHO DA MATRIZ ")
      escreva("Quantidade de Linhas: ")
         leia(l)
      escreva("Quantidade de Colunas: ")
         leia(c)
      escreval("-----------------------")

      escreva("Digite os valores para a matriz de ",l," linhas e ",c," colunas: ")
      para cont <- 1 ate l faca
          para cont2 <- 1 ate c faca
              leia(mat[cont,cont2])
              se mat[cont,cont2] % 2 = 0 entao
                par <- par + 1
              senao
                imp <- imp + 1
              fimse
          fimpara
      fimpara
      
        escreval(" ")
      escreval("--------------------")

      para cont <- 1 ate l faca
          para cont2 <- 1 ate c faca
              escreva(mat[cont,cont2],"   ")
          fimpara
          escreval(" ")
      fimpara
      
      escreval("Quantidade de números pares: ",par)
      escreval("Quantidade de números ímpares: ",imp)




fimalgoritmo