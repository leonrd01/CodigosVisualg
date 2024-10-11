algoritmo "CarrosFabri"
TIPO
     carro = registro
       marca: caractere
       anofabri: inteiro
     fimregistro
var
    carros: vetor[1..10] de carro
    cont,tot: inteiro
inicio
      para cont <- 1 ate 10 faca
          escreva("Digite a marca do carro: ")
             leia(carros[cont].marca)
          escreva("Digite o ano em que foi fabricado: ")
             leia(carros[cont].anofabri)
             limpatela
             se carros[cont].anofabri < 2010 entao
               tot <- tot + 1
             fimse
      fimpara
      escreval("-------------------------------------------------")
      escreval("- Carros fabricados antes de 2010: ")
      para cont <- 1 ate 10 faca
          se carros[cont].anofabri < 2010 entao
            escreval(carros[cont].marca)
          fimse
      fimpara
      escreval(" ")
      escreval("Total de carros fabricados antes de 2010: ",tot)
      escreval("-------------------------------------------------")




fimalgoritmo