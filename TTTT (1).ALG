Algoritmo "tttt"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 16/11/2023
Var
   // Se��o de Declara��es das vari�veis
   resp:caracter
   op,sup,aux,resp1,s,dia,semana,mes,superviso,operario:inteiro
   z,w,aux1:real
Inicio
   op <-160*15
   sup<-160*40
   //aux<-op+sup

   repita
      limpatela
      escreval("------------------------- HORA EXTRA ----------------------------")
      escreval("[1] OPER�RIOS ")
      escreval("[2] SUPERVISOR")
      leia(S)
      escolha (s)
      caso 1
         dia<-15*8
         semana<-dia*5
         mes<-semana*4
         operario<-mes

         escreval("informe quntas horas extra voc� trabalhou no m�s: ")
         leia(resp1)
         z<-operario/160 //160 � a carga horararia mensal do operario

         w<-z*resp1
         aux1<-w+op
         escreval("SAL�RIO:",op)
         escreval(" o valor das suas horas extra � de: R$",w,",00")
         escreval(" a soma do seu salario e hora extra do m�s �:",aux1)
         escreval("desja refazer o calculo ? (S/N)")
         leia(resp)
      caso 2
         dia<-40*8
         semana<-dia*5
         mes<-semana*4
         superviso<-mes

         escreval("informe quntas horas extra voc� trabalhou no m�s: ")
         leia(resp1)
         z<-superviso/160 //160 � a carga horararia mensal
         w<-z*resp1
         aux1<-w+sup
         escreval("SAL�RIO:",sup)
         escreval(" o valor das suas horas extra � de: R$",w,",00")

         escreval(" a soma do seu salario e hora extra do m�s �: R$",aux1)
         escreval("deseja refazer o calculo ? (s/n)")
         leia(resp)
      fimescolha
   ate maiusc(resp) = "n"
Fimalgoritmo