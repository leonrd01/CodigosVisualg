Algoritmo "MatrizMagic"

Var
   mat: vetor [1..3,1..3] de inteiro
   cont,cont2,soma1,soma2,soma3,soma4,soma5,soma6,soma7,soma8: inteiro
   logic:logico
Inicio
      Escreval("Digite os Valores")
      para cont <- 1 ate 3 faca
          para cont2 <- 1 ate 3 faca
              leia(mat[cont,cont2])
          fimpara
      fimpara

   soma1 <- (mat[1,1] + mat[1,2] + mat[1,3])
   soma2 <- (mat[2,1] + mat[2,2] + mat[2,3])
   soma3 <- (mat[3,1] + mat[3,2] + mat[3,3])
   soma4 <- (mat[1,1] + mat[2,1] + mat[3,1])
   soma5 <- (mat[1,2] + mat[2,2] + mat[3,2])
   soma6 <- (mat[1,3] + mat[2,3] + mat[3,3])
   soma7 <- (mat[1,1] + mat[2,2] + mat[3,3])
   soma8 <- (mat[3,1] + mat[2,2] + mat[1,3])
   
   se (soma1<>soma2) entao
      logic <- falso
   senao
      se (soma2<>soma3) entao
         logic <- falso
      senao
         se (soma3<>soma4) entao
            logic <- falso
         senao
            se (soma4<>soma5) entao
              logic <- falso
            senao
               se (soma5<>soma6) entao
                  logic <- falso
               senao
                  se (soma6<>soma7) entao
                     logic <- falso
                  senao
                     se (soma7<>soma8) entao
                        logic <- falso
                     senao
                        logic <- verdadeiro
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   
   se logic = verdadeiro entao
     escreva("Essa Matriz é um quadrado mágico")
   senao
     escreva("Essa Matriz não é um quadrado mágico")
   fimse
Fimalgoritmo