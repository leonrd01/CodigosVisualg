Algoritmo "tttt"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/11/2023
Var
   // Seção de Declarações das variáveis
    resp:caracter
   resp1,s,dia,semana,mes,superviso,operario:inteiro
   z,w:real
Inicio

   repita
   limpatela
      escreval("------------------------- HORA EXTRA ----------------------------")
      escreval("[1] OPERÁRIOS ")
      escreval("[2] SUPERVISOR")
      leia(S)
      escolha (s)
      caso 1
         dia<-15*8
         semana<-dia*5
         mes<-semana*4
         operario<-mes

         escreval("informe quntas horas extra você trabalhou no mês: ")
         leia(resp1)
         z<-operario/160 //160 é a carga horararia mensal do operario

         w<-z*resp1
         escreval(" o valor das suas horas extra é de: R$",w,",00")
         escreval("desja refazer o calculo ? (S/N)")
         leia(resp)
      caso 2
         dia<-40*8
         semana<-dia*5
         mes<-semana*4
         superviso<-mes

         escreval("informe quntas horas extra você trabalhou no mês: ")
         leia(resp1)
         z<-superviso/160 //160 é a carga horararia mensal

         w<-z*resp1
         escreval(" o valor das suas horas extra é de: R$",w,",00")
         escreval("deseja refazer o calculo ? (s/n)")
         leia(resp)
      fimescolha
   ate maiusc(resp) = "n"
Fimalgoritmo