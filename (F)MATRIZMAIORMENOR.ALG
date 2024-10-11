algoritmo "MatrizMaiorMenor"
var
   mat: vetor[1..6,1..3] de inteiro
   cont,cont2,maior,menor: inteiro
inicio
      menor <- 1000
      maior <- 0
      escreval("Digite os valores: ")
      para cont <- 1 ate 6 faca
          para cont2 <- 1 ate 3 faca
              leia(mat[cont,cont2])
              se mat[cont,cont2] > maior entao
                maior <- mat[cont,cont2]
              fimse
              se mat[cont,cont2] < menor entao
                menor <- mat[cont,cont2]
              fimse
          fimpara
      fimpara
      escreval(" ")
      escreval("-------------------------------")
      escreval("Maior número da matriz: ",maior)
      escreval("Menor número da matriz: ",menor)
      
fimalgoritmo