algoritmo "MatrizMult"
var
   mat1: vetor[1..3,1..2] de inteiro
   mat2: vetor[1..2,1..5] de inteiro
   result: vetor[1..3,1..5] de inteiro
   cont,cont2,cont3,x: inteiro
inicio
      escreval("Digite os valores da 1° Matriz: ")
      para cont <- 1 ate 3 faca
          para cont2 <- 1 ate 2 faca
              leia(mat1[cont,cont2])
          fimpara
      fimpara
      limpatela
      escreval("Digite os valores da 2° Matriz: ")
      para cont <- 1 ate 2 faca
          para cont2 <- 1 ate 5 faca
              leia(mat2[cont,cont2])
          fimpara
      fimpara
      x <- 1
      para cont <- 1 ate 3 faca
          para cont2 <- 1 ate 5 faca
               para cont3 <- 1 ate 2 faca
                  result[cont,cont2] <- result[cont,cont2] + mat1[cont,cont3] * mat2[cont3,cont2]
              fimpara
          fimpara
      fimpara
      limpatela
      escreval(" ")
      escreval("-----------MATRIZ-----------")
      para cont <- 1 ate 3 faca
          para cont2 <- 1 ate 5 faca
              escreva(result[cont,cont2],"   ")
          fimpara
          escreval(" ")
      fimpara















fimalgoritmo