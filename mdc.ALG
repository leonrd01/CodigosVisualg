algoritmo "semnome"
var
   num,cont,mdc:inteiro
inicio
      leia(num)
      mdc <- 0
      para cont <- num ate 2 passo -1 faca
      se num % cont = 0 entao
        se cont > mdc entao
          mdc <- cont
        fimse
      fimse
      fimpara

      escreval(mdc)


fimalgoritmo