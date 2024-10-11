Algoritmo "CAPACIDADE"
 PROCEDIMENTO CAPACIDADE()
Var
   Porcentagem:REAL
   total,diario,anual:real
Inicio
   escreval ("INFORME CAPACIDADE DE PRODUÇÃO EM PORCETGEM ")
   leia (porcentagem)
   total <- (porcentagem*33000)/100
   anual <- total * 12
   diario <- total/22
   ESCREVAL (" CAPACIDADE DE PRODUÇÃO ANUAL ", ANUAL ," MIL UNIDADES")
   ESCREVAL (" CAPACIDADE DE PRODUÇÃO MENSAL", TOTAL,"  MIL UNIDADES")
   ESCREVAL ("CAPACIDADE DE PRODUÇÃO DIÁRIA ", DIARIO," UNIDADES")
   FIMPROCEDIMENTO

Fimalgoritmo