algoritmo "MatrizValidacaoparImp"
var
   p,i: vetor[1..5,1..6] de inteiro
   cont,cont2,x: inteiro
inicio
      escreval("Digite os valores para a 1° matriz: ")
      para cont <- 1 ate 5 faca
          para cont2 <- 1 ate 6 faca
              leia(x)
              repita
               se x % 2 = 0 entao
                 p[cont,cont2] <- x
               senao
                 escreval("*NÚMERO INVALIDO*")
                 escreva("Digite outro número: ")
                 leia(x)
               fimse
              ate x % 2 = 0
          fimpara
      fimpara
      
      limpatela
      
      escreval("Digite os valores para a 2° matriz: ")
      para cont <- 1 ate 5 faca
          para cont2 <- 1 ate 6 faca
              leia(x)
              repita
               se x % 2 = 1 entao
                 i[cont,cont2] <- x
               senao
                 escreval("*NÚMERO INVALIDO*")
                 escreva("Digite outro número: ")
                 leia(x)
               fimse
              ate x % 2 = 1
          fimpara
      fimpara
      
      escreval("----------MATRIZ----------")
      escreval(" ")
      escreval("* 1° MATRIZ *")
      para cont <- 1 ate 5 faca
          para cont2 <- 1 ate 6 faca
              escreva(p[cont,cont2],"  ")
          fimpara
          escreval(" ")
      fimpara
      
      escreval(" ")
      
      escreval("* 2° MATRIZ *")
      para cont <- 1 ate 5 faca
          para cont2 <- 1 ate 6 faca
              escreva(i[cont,cont2]," ")
          fimpara
          escreval(" ")
      fimpara
fimalgoritmo