Algoritmo "semnome"
// Disciplina  :  [Linguagem e L�gica de Programa��o] 
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/11/2023
Var
dispesa_P_palete,valorp,quantp:real

// Se��o de Declara��es das vari�veis 
funcao faturamentoP(QP,VP,dispensap:real):real

inicio
       retorne (QP * (VP + dispensap)) + ((QP * (VP + dispesa_P_palete))* 50/100)
fimfuncao

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
        leia(quantp)
        leia(valorp)
        leia(dispesa_P_palete)
        escreval(faturamentoP(quantp,valorp,dispesa_P_palete))
    

Fimalgoritmo