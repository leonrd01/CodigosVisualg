algoritmo "(D)MatrizRepit"
var
   mat: vetor[1..5,1..6] de inteiro
   cont,cont2,cont3,cont4,x,tot:inteiro
inicio
      escreval("Digite os valores: ")
      para cont <- 1 ate 5 faca
          para cont2 <- 1 ate 6 faca
              leia(x)
              para cont3 <- 1 ate 5 faca
                  para cont4 <- 1 ate 6 faca
                      se x = mat[cont3,cont4] entao
                        tot <- tot + 1
                      fimse
                  fimpara
              fimpara
              mat[cont,cont2] <- x
          fimpara
      fimpara
      
      escreval(" ")
      escreval("---------------MATRIZ---------------")
      para cont <- 1 ate 5 faca
          para cont2 <- 1 ate 6 faca
              escreva(mat[cont,cont2],"   ")
          fimpara
          escreval(" ")
      fimpara
      escreval("------------------------------------")
      escreva("Matriz com o total de ",tot," números repetidos. ")
      
      
      
      
      
      



fimalgoritmo