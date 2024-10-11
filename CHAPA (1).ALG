Algoritmo "chapa"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Leonardo Pinho dos Santos
// Data atual  : 04/09/2023
Var
// Seção de Declarações das variáveis 
     resp: caractere
     totvot,voto,chap10,chap11,chap12,chap14,chap15,porc10,porc11,porc12,porc14,porc15:real
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

  repita
   limpatela
   escreva("QUAL O SEU VOTO ? ")
      leia(voto)
   escreval("VOTACÃO EFETUADA, OBRIGADO !!")
   escreval("-------------------------------")
    escolha(voto)
           caso 10
           chap10 <- chap10 + 1
            totvot <- totvot + 1
    
           caso 11
           chap11 <- chap11 + 1
            totvot <- totvot + 1

           caso 12
           chap12 <- chap12 + 1
            totvot <- totvot + 1
            
           caso 14
           chap14 <- chap14 + 1
            totvot <- totvot + 1
            
           caso 15
           chap15 <- chap15 + 1
            totvot <- totvot + 1
           
    fimescolha
    porc10 <- chap10*totvot/100
    porc11 <- chap11*totvot/100
    porc12 <- chap12*totvot/100
    porc14 <- chap14*totvot/100
    porc15 <- chap15*totvot/100
    escreva("DESEJA CONTINUAR ? ")
       leia(resp)
    escreval("-------------------")
   até resp = "n"
     escreval("RESULTADO DA VOTAÇÃO : ")
     escreval(" ")
     escreval("- CHAPA 10 ")
     escreval("Total de votos: ",chap10)
     escreval("Porcentual da chapa: ",porc10)
     escreval("-----------------------------")
     escreval("- CHAPA 11 ")
     escreval("Total de votos: ",chap11)
     escreval("Porcentual da chapa: ",porc11)
     escreval("-----------------------------")
     escreval("- CHAPA 12 ")
     escreval("Total de votos: ",chap12)
     escreval("Porcentual da chapa: ",porc12)
     escreval("-----------------------------")
     escreval("- VOTOS NULOS ")
     escreval("Total de votos: ",chap14)
     escreval("Porcentual de nulos: ",porc14)
     escreval("-----------------------------")
     escreval("- VOTOS EM BRANCO ")
     escreval("Total de votos: ",chap15)
     escreval("Porcentual de brancos: ",porc15)
     
Fimalgoritmo