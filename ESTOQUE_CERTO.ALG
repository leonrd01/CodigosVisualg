algoritmo "CALANGOS"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
tipo
   // REGISTRO DE CADASTRO DE PRODUTOS ------------------------------
   cad=registro
      codigo:inteiro
      nome:caractere
      fabricacao:caractere
      fornecedor:caractere
      quantidade:inteiro
      armazenagem:caractere
      valor:real
   fimregistro
   //================================================================

   // REGISTRO DESPESAS ---------------------------------------------
   cadD = registro
      agua:real
      luz:real
      salario:inteiro
      imposto:real
   FIMREGISTRO
   //================================================================
   
   //REGISTRO FUNCION�RIOS ------------------------------------------
   cadf=registro
      Nome:caractere
      CPF:inteiro
      RG:inteiro
      Endereco:caractere
      Telefone:inteiro
      qtfilhos:inteiro
      cargo:caractere
   fimregistro
   //================================================================

var
   // V�RIAVEIS GLOBAIS ---------------------------------------------
   vetC:     vetor[1..4] de cad
   clientes: vetor[1..4] de caractere
   VETF:     vetor[1..4] de CADD
   vetFUN:   vetor[1..4] de cadf
   N, n1,S,desp1,resp2,nome: CARACTER
   DESP2,TOT1,TOT2,calc,opc,opc2,opc3,opc4,dispesa_P_palete,dispesa,valorp,quantp,aux1,salarioliquido: REAL
   quant,resp,codP,i,j,totI,totF,aux,paletes,x,aux2,resp1,supervisor,operario: inteiro
   //===================================================================

   // FUN��O DE C�LCULO DO SERVI�O DE DISTRIBUI��O ---------------------
   funcao faturamentoP(QP,VP,dispensap:real):real
   inicio
         retorne (QP * (VP + dispensap)) + ((QP * (VP + dispesa_P_palete))* 50/100)
   fimfuncao
   //===================================================================

   // FUN��O DE C�LCULO SAL�RIO COM HORAS EXTRAS ----------------------
   funcao calcsalarioHE (op,he:real):real
   inicio
         retorne ((op/160)*he) + op
   fimfuncao
   //==================================================================
   
   // FUN��O DE C�LCULO DE HORAS EXTRAS -------------------------------
   funcao calcHE (op,he:real):real
   inicio
         retorne (op/160)*he
   fimfuncao
   //==================================================================
   
   // FUN��O DE C�LCULO DE IRPF (7.5%) --------------------------------
   funcao calcIRPF1 (s:real):real
   inicio
         retorne s - ((7*s)/100)
   fimfuncao
   //=================================================================
   
   // FUN��O DE C�LCULO DE IRPF (15%) --------------------------------
   funcao calcIRPF2 (s:real):real
   inicio
         retorne s - ((15*s)/100)
   fimfuncao
   //=================================================================
   
   // FUN��O DE C�LCULO DE IRPF (22%) --------------------------------
   funcao calcIRPF3 (s:real):real
   inicio
         retorne s - ((22*s)/100)
   fimfuncao
   //=================================================================

// SA�DA DE DADOS PRODUTOS ---------------------------------------------------
procedimento topo()
inicio
   escreval("")
   escreval("C�DIGO: ",vetC[i].codigo)
   escreval("NOME : ",vetC[i].nome)
   escreval("ANO DE FABRICA��O: ",vetC[i].fabricacao)
   escreval("FORNECEDOR: ",vetC[i].fornecedor)
   escreval("QUANTIDADE: ",vetC[i].quantidade)
   escreval("LOCAL DE ARMAZENAGEM: ",vetC[i].armazenagem)
   escreval("VALOR: ",vetC[i].valor)
   escreval("")
fimprocedimento
//====================================================================

// S�IDA DE DADOS FUNCION�RIOS ---------------------------------------
procedimento topoF ()
inicio
   repita
    limpatela
    escreval("Total de funcion�rios cadastrados: ",totF)
    escreval("")
    para i <- 1 ate totF faca
     escreval("")
     escreval("NOME DO FUNCION�RIO: ",vetFUN[i].nome)
     escreval("CPF: ",vetFUN[i].cpf)
     escreval("RG: ",vetFUN[i].rg)
     escreval("ENDERE�O: ",vetFUN[i].endereco)
     escreval("TELEFONE: ",vetFUN[i].telefone)
     escreval("QUANTIDADE DE FILHOS: ",vetFUN[i].qtfilhos)
     escreval("CARGO: ",vetFUN[i].cargo)
     escreval("")
    fimpara
    escreval("Deseja voltar ? [S/N]")
        leia(resp2)
   ate maiusc(resp2) = "S"
fimprocedimento
//====================================================================

// PESQUISA (OPERACIONAL) --------------------------------------------
procedimento pesquisar()
inicio
   repita
      limpatela
      escreval("--------- PESQUISA --------")
      escreval("")
      escreval("TOTAL DE PRODUTOS CADASTRADOS:",totI)
      escreval("")
      escreval("")
      escreva("Digite o c�digo : ")
      leia(codP)
      i <- 1
      enquanto (codP <> vetC[i].codigo) e (i <= 3) faca
         i <- i + 1
      fimenquanto
      escreval("")
      se codP = vetC[i].codigo entao
         limpatela
         escreval("Item possui cadastro")
         topo()
      senao
         escreval("Item n�o possui cadastro")
      fimse
      escreval("")
      escreval("Deseja realizar outra pesquisa ? [S/N]")
      leia(resp2)
   ate maiusc(resp2) = "N"
fimprocedimento
//====================================================================

// C�LCULO DE CAPACIDADE (OPERACIONAL) -------------------------------
PROCEDIMENTO CAPACIDADE()
Var
   Porcentagem:REAL
   total,diario,anual:real
Inicio
   repita
      limpatela
      escreval("-------------------- CAPACIDADE ---------------------")
      escreval("")
      escreval("INFORME CAPACIDADE DE PRODU��O EM PORCETGEM ")
      leia (porcentagem)
      total <- (porcentagem*33000)/100
      anual <- total * 12
      diario <- total/22
      ESCREVAL("")
      ESCREVAL(" CAPACIDADE DE PRODU��O ANUAL ", ANUAL ," MIL UNIDADES")
      ESCREVAL(" CAPACIDADE DE PRODU��O MENSAL", TOTAL,"  MIL UNIDADES")
      ESCREVAL(" CAPACIDADE DE PRODU��O DI�RIA ", DIARIO," UNIDADES")
      ESCREVAL("")
      ESCREVAL("DESEJA REALIZAR OUTRO C�LCULO ? [S/N]")
      LEIA(resp2)

   ate maiusc(resp2) = "N"
FIMPROCEDIMENTO
//======================================================================

// CADASTRO DE PRODUTOS (OPERACIONAL) ----------------------------------
procedimento cadProdutos ()
inicio
   resp2 <- "S"
   i <- aux2 + 1
   enquanto (maiusc(resp2) = "S") e (i <= 4) faca
      limpatela
      escreval("----------------------------------------------------------")
      escreval("                   CADASTRO DE PRODUTOS                   ")
      escreval("----------------------------------------------------------")
      escreval("")
      escreval("")
      escreval(" PREENCHA COM OS DADOS ABAIXO: ")
      escreval("")
      escreval("")
      escreva("NOME: ")
      leia(nome)
      aux <- i
      i <- 1
      enquanto (nome <> vetC[i].nome) e (i <= 3) faca
         i <- i + 1
      fimenquanto

      se nome = vetC[i].nome entao
         escreval("*PRODUTO JA POSSUI CADASTRO*")
         escreval("")
         escreval("Digite a quantidade de itens que deseja adicionar: ")
         leia(quant)
         vetC[i].quantidade <- vetC[i].quantidade + quant
         escreval("")
         escreval("*QUANTIDADE DO PRODUTO ATUALIZADO*")
         escreval("")
         escreval("Deseja realizar outro cadastro ? [S/N]")
         leia(resp2)
      senao
         i <- aux
         vetC[i].nome <- nome
         escreva("C�DIGO DO PRODUTO: ")
         leia(vetC[i].codigo)
         escreva("DATA DE FABRICA��O: ")
         leia(vetC[i].fabricacao)
         escreva("NOME DO FORNECEDOR: ")
         leia(vetC[i].fornecedor)
         escreva("QUANTIDADE: ")
         leia(vetC[i].quantidade)
         escreva("LOCAL DE ARMAZENAGEM : ")
         leia(vetC[i].armazenagem)
         escreva("VALOR : ")
         leia(vetC[i].valor)
         escreval("")
         escreval("*CADASTRO REALIZADO COM SUCESSO!!*")
         i <- i + 1
         totI <- totI + 1
         escreval("")
         escreval("Deseja realizar outro cadastro ? [S/N]")
         leia(resp2)
      fimse
   fimenquanto
   aux2 <- i
fimprocedimento
//=======================================================================

// LISTAGEM DE ITENS ----------------------------------------------------
procedimento LISTAGEM()
inicio
  repita
   PARA x DE 1 ATE 3 FACA
      PARA j DE i + 1 ATE 4 FACA
         se (vetc[x].nome > vetc[j].nome) entao
            N1 <- VETC[x].nome
            VETC[x].nome <- VETC[J].nome
            VETC[J].nome <- N1
         fimse
      FIMPARA
   FIMPARA
   limpatela
   escreval("Total de itens cadastrados: ",totI)
   escreval("")
   PARA I DE 1 ATE totI FACA
      topo()
   fimpara
   escreval("")
   escreval("Deseja sair ? [S/N]")
       leia(resp2)
  ate maiusc(resp2) = "S"
fimprocedimento
//=======================================================================

// SA�DA DE PRODUTOS (OPERACIONAL) --------------------------------------
procedimento saidaProdutos ()
inicio
   repita
      limpatela
      escreva("Digite o c�digo do produto que deseja realizar o pedido: ")
      leia(codP)
      i <- 1
      enquanto (codP <> vetC[i].codigo) e (i <= 3) faca
         i <- i + 1
      fimenquanto

      se codP = vetC[i].codigo entao
         limpatela
         escreval("C�DIGO DO PRODUTO: ",vetC[i].codigo)
         escreval("NOME DO PRODUTO: ",vetC[i].nome)
         escreval("ESTOQUE: ",vetC[i].quantidade)
         escreval("VALOR: ",vetC[i].valor)
         escreval("")
         escreval("- Preencha os dados abaixo para continuar com o pedido: ")
         escreval("")
         escreva("NOME DO CLIENTE: ")
         leia(clientes[i])
         repita
            escreva("QUANTIDADE DO PEDIDO: ")
            leia(quant)

            se (quant > vetC[i].quantidade) entao
               limpatela
               escreval("*QUANTIDADE DO PEDIDO ACIMA DO DISPON�VEL NO ESTOQUE, DIGITE UM VALOR V�LIDO!!*")
               escreval("")
            senao
               se (quant < 0) entao
                  escreval("Escreva um numero positivo!!")
               fimse
            fimse
         ate(quant <= vetC[i].quantidade)

         se (quant <= vetC[i].quantidade) entao
            vetC[i].quantidade <- vetC[i].quantidade - quant
         fimse

         limpatela
         escreval("PEDIDO REALIZADO COM SUCESSO!!")
         escreval("")
         escreval("C�DIGO DO PEDIDO: 00",i)
         escreval("PRODUTO: ",vetC[i].nome)
         escreval("CLIENTE: ",clientes[i])
         escreval("QUANTIDADE DO PEDIDO: ",quant)
         escreval("TOTAL DE ITENS RESTANTES NO ESTOQUE: ",vetC[i].quantidade)
      senao
         escreval("")
         escreval("*PRODUTO N�O ENCONTRADO*")
      fimse

      escreval("")
      escreval("Deseja realizar outro pedido ? [S/N]")
      leia(resp2)



   ate maiusc(resp2) = "N"
fimprocedimento
//========================================================================

// C�LCULO DE GASTOS (FINANCEIRO) ----------------------------------------
PROCEDIMENTO  CUSTOS ()
Inicio
   repita
      limpatela
      ESCREVAL("-------------- C�LCULO DE DESPESAS FIXAS --------------")
      ESCREVAL("")
      ESCREVAL("")
      ESCREVAL("- INFORME O GASTO NO M�S COM: ")
      ESCREVAL("")
      ESCREVA("�GUA: ")
      LEIA(VETF.AGUA)
      ESCREVA("LUZ: ")
      LEIA(VETF.LUZ)
      ESCREVA("SAL�RIO DE EMPREGADOS: ")
      LEIA(VETF.SALARIO)
      ESCREVA("IMPOSTOS: ")
      LEIA(VETF.IMPOSTO)
      TOT1<- ( VETF.AGUA + VETF.LUZ + VETF.SALARIO +VETF.IMPOSTO)
      repita
         ESCREVAL("")
         ESCREVA("DESEJA ADICIONAR MAIS ALGUM GASTO ? : (S/N)")
         LEIA (resp2)
         SE MAIUSC(resp2) = "N" ENTAO
            calc <- (tot2 + TOT1)
            LIMPATELA
            ESCREVAL("--------------------------------------------")
            ESCREVAL("O TOTAL DE GASTOS NO M�S FOI DE R$ ",CALC )
            ESCREVAL("--------------------------------------------")
         FIMSE
         SE MAIUSC(resp2) = "S" ENTAO
            ESCREVA("INFORME COM OQUE FOI O GASTO: ")
            leia (desp1)
            ESCREVA("INFORME AGORA O VALOR: ")
            LEIA(DESP2)
            TOT2 <- (TOT2 + DESP2)
            calc <- (tot2 + TOT1)
            LIMPATELA
            ESCREVAL("-------------------------------------------")
            ESCREVAL("O TOTAL DE GASTOS NO M�S FOI DE R$: ",CALC)
            ESCREVAL("-------------------------------------------")
         FIMSE
      ATE maiusc(resp2) = "N"
      ESCREVAL("")
      ESCREVAL("DESEJA REAIZAR OUTRO C�LCULO ? [S/N]")
      LEIA(resp2)
   ATE maiusc(resp2) = "N"
FIMPROCEDIMENTO
//======================================================================

// C�LCULO DE CUSTO OPERACIONAL (FINANCEIRO) ---------------------------
Procedimento DispesaOP()
Inicio
   repita
      limpatela
      escreval("-------------- CUSTOS DO SERVI�O DE DISTRIBUI��O ---------------")
      escreval("")
      escreval("")
      DISPESA <- CALC
      Escreva("Quantos paletes foram movimentados neste m�s? ")
      Leia(paletes)
      escreval("")
      dispesa_P_palete <- dispesa/paletes

      Escreval("Seu custo de servi�o por cada palete �: R$",dispesa_P_palete:2:2)
      escreval("")
      escreval("Deseja realizar outro c�lculo ? [S/N]")
      leia(resp2)
   ate maiusc(resp2) = "N"
fimprocedimento
//======================================================================

// LUCRO SOBRE PRODUTOS (FINANCEIRO) -----------------------------------
procedimento lucroP()
inicio
   repita
      limpatela
      escreval("--------------------- LUCRO SOBRE PRODUTOS ---------------------")
      escreval("")
      escreval("")
      escreval("- Preencha com os dados abaixo para proceguir com a opera��o")
      escreval("")
      escreva ("Digite o c�digo do produto: ")
         leia(codP)
         i <- 1
      enquanto (codP <> vetC[i].codigo) e (i <= 3) faca
         i <- i + 1
      fimenquanto
      topo()
      escreval("")
      escreva ("Digite a quantidade de pedidos de pallet: ")
         leia (quantP)
      escreval("")
      escreval("O SEU LUCRO POR PALLET FOI DE: ",faturamentoP(quantP,vetC[i].valor,dispesa_P_palete))
      escreval("")
      escreval("Deseja realizar outro c�lculo ? [S/N]")
      leia(resp2)

   ate maiusc(resp2) = "N"

fimprocedimento
//======================================================================

// CADASTRO FUNCIONARIOS (RH) ------------------------------------------
procedimento cadfuncionario ()
inicio
       i <- 1
       resp2 <- "S"
       enquanto (maiusc(resp2) = "S") e (i <= 4) faca
         limpatela
         escreval("------------------ CADASTRO DE FUNCION�RIOS ------------------")
         escreval("")
         escreval("")
         escreval("- Preencha com os dados abaixo: ")
         escreval("")
         escreva("NOME:  ")
            leia(vetFUN[i].nome)
         escreva("CPF:   ")
            leia(vetFUN[i].cpf)
         escreva("RG:   ")
            leia(vetFUN[i].rg)
         escreva("ENDERE�O:  ")
            leia(vetFUN[i].endereco)
         escreva("TELEFONE:  ")
            leia(vetFUN[i].telefone)
         escreva("QUANTIDADE DE FILHOS: ")
            leia(vetFUN[i].qtfilhos)
         escreva("CARGO: ")
            leia(vetFUN[i].cargo)
         escreval("")
         escreval("CADASTRO REALIZADO COM SUCESSO !!")
         escreval("")
         escreval("Deseja realizar outro cadastro ? [S/N]")
             leia(resp2)
             i <- i + 1
             totF <- totF + 1
       fimenquanto
fimprocedimento
//======================================================================

// C�LCULO S�LARIO (RH) ------------------------------------------------
procedimento calcsalario ()
inicio
   REPITA
      limpatela
      escreval("------------------------- HORAS EXTRAS ----------------------------")
      escreval("")
      escreval("")
     repita
      escreval("- DIGITE O NOME DO FUNCION�RIO: ")
      escreval("")
          leia(nome)

      i <- 1
      enquanto (nome <> vetFUN[i].nome) e (i <= 3) faca
          i <- i + 1
      fimenquanto
      se vetFUN[i].nome = nome entao
        limpatela
        topoF()
        escreval("")
        escreval("Deseja continuar ?")
            leia(resp2)
      senao
        escreval("*FUNCION�RIO N�O ENCONTRADO*")
      fimse
     ate (nome = vetFUN[i].nome) e (maiusc(resp2) = "SIM")
     

               SE maiusc(vetFUN[i].cargo) = "OPERARIO" ENTAO
                 limpatela
                 operario <- 2400
                 escreval("informe quantas horas extra voc� trabalhou no m�s: ")
                     leia(resp1)
                 escreval("")
                 escreval("SAL�RIO BRUTO MENSAL: R$",operario,",00")
                 escreval("VALOR DAS HORAS EXTRAS: R$",calcHE(operario,resp1),",00")
                 se (calcsalarioHE(operario,resp1) > 1000) e (calcsalarioHE(operario,resp1) < 2500) entao
                    salarioliquido <- calcsalarioHE(operario,resp1) - (8 * calcsalarioHE(operario,resp1))/100
                     escreval("DESCONTO SAL�RIO: -$",(8 * calcsalarioHE(operario,resp1))/100)
                 senao
                    se (calcsalarioHE(operario,resp1) > 2500) e (calcsalarioHE(operario,resp1) < 4000) entao
                       salarioliquido <- calcsalarioHE(operario,resp1) - (10 * calcsalarioHE(operario,resp1))/100
                        escreval("DESCONTO SAL�RIO: -$",(10 * calcsalarioHE(operario,resp1))/100)
                    senao
                       se (calcsalarioHE(operario,resp1) > 4000) e (calcsalarioHE(operario,resp1) < 5500) entao
                         salarioliquido <- calcsalarioHE(operario,resp1) - (12 * calcsalarioHE(operario,resp1))/100
                          escreval("DESCONTO SAL�RIO: -$",(12 * calcsalarioHE(operario,resp1))/100)
                       senao
                          se calcsalarioHE(operario,resp1) > 5000 entao
                            salarioliquido <- calcsalarioHE(operario,resp1) - (15 * calcsalarioHE(operario,resp1))/100
                             escreval("DESCONTO SAL�RIO: -$",(15 * calcsalarioHE(operario,resp1))/100)
                          fimse
                       fimse
                    fimse
                 fimse

                 
                 se salarioliquido <= 1903 entao
                   escreval("DESCONTO IRPF: *INSENTO*")
                   escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                   escreval("")

                 senao
                   se (salarioliquido > 1903) e (salarioliquido <= 2826) entao
                     salarioliquido <- calcIRPF1(salarioliquido)
                     escreval("DESCONTO IRPF: -$",((7*salarioliquido)/100))
                     escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                     escreval("")

                   senao
                     se (salarioliquido > 2826) e (salarioliquido <= 3751) entao
                       salarioliquido <- calcIRPF2(salarioliquido)
                       escreval("DESCONTO IRPF: -$",((15*salarioliquido)/100))
                       escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                       escreval("")

                     senao
                       se (salarioliquido > 3751) entao
                         salarioliquido <- calcIRPF3(salarioliquido)
                         escreval("DESCONTO IRPF: -$",((22*salarioliquido)/100))
                         escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                         escreval("")

                       fimse
                     fimse
                   fimse
                 fimse
               SENAO
                SE maiusc(vetFUN[i].cargo) = "SUPERVISOR" ENTAO
                 limpatela
                 supervisor <- 6400
                 escreval("informe quantas horas extra voc� trabalhou no m�s: ")
                     leia(resp1)

                 escreval("SAL�RIO BRUTO: R$",supervisor,",00")
                 escreval("VALOR DAS HORAS EXTRAS: R$",calcHE(supervisor,resp1),",00")
                 se (calcsalarioHE(supervisor,resp1) > 1000) e (calcsalarioHE(supervisor,resp1) < 2500) entao
                    salarioliquido <- calcsalarioHE(supervisor,resp1) - (8 * calcsalarioHE(supervisor,resp1))/100
                    escreval("DESCONTO SAL�RIO: -$",(8 * calcsalarioHE(supervisor,resp1))/100)
                 senao
                    se (calcsalarioHE(supervisor,resp1) > 2500) e (calcsalarioHE(supervisor,resp1) < 4000) entao
                       salarioliquido <- calcsalarioHE(supervisor,resp1) - (10 * calcsalarioHE(supervisor,resp1))/100
                       escreval("DESCONTO SAL�RIO: -$",(10 * calcsalarioHE(supervisor,resp1))/100)
                    senao
                       se (calcsalarioHE(supervisor,resp1) > 4000) e (calcsalarioHE(supervisor,resp1) < 5500) entao
                         salarioliquido <- calcsalarioHE(supervisor,resp1) - (12 * calcsalarioHE(supervisor,resp1))/100
                         escreval("DESCONTO SAL�RIO: -$",(12 * calcsalarioHE(supervisor,resp1))/100)
                       senao
                          se calcsalarioHE(supervisor,resp1) > 5000 entao
                            salarioliquido <- calcsalarioHE(supervisor,resp1) - (15 * calcsalarioHE(supervisor,resp1))/100
                            escreval("DESCONTO SAL�RIO: -$",(15 * calcsalarioHE(supervisor,resp1))/100)
                          fimse
                       fimse
                    fimse
                 fimse
                 
                 se salarioliquido <= 1930 entao
                   escreval("DESCONTO IRPF: *INSENTO*")
                   escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                   escreval("")

                 senao
                   se (salarioliquido > 1903) e (salarioliquido <= 2826) entao
                     salarioliquido <- calcIRPF1(salarioliquido)
                     escreval("DESCONTO IRPF: -$",((7*salarioliquido)/100))
                     escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                     escreval("")

                   senao
                     se (salarioliquido > 2826) e (salarioliquido <= 3751) entao
                       salarioliquido <- calcIRPF2(salarioliquido)
                       escreval("DESCONTO IRPF: -$",((15*salarioliquido)/100))
                       escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                       escreval("")

                     senao
                       se (salarioliquido > 3751) entao
                         salarioliquido <- calcIRPF3(salarioliquido)
                         escreval("DESCONTO IRPF: -$",((22*salarioliquido)/100))
                         escreval("SAL�RIO LIQUIDO: R$",salarioliquido)
                         escreval("")

                       fimse
                     fimse
                   fimse
                 fimse
               FIMSE
              FIMSE
              escreval("deseja refazer o calculo ? [S/N]")
                  leia(resp2)
   ATE maiusc(resp2) = "N"
fimprocedimento
//======================================================================

inicio

   repita
      limpatela
      escreval("----------------------------------------------------------")
      escreval("                   *ESTOQUE_CERTO_LTDA*                   ")
      escreval("__________________________________________________________")
      escreval("")
      escreval("                        *MENU*                            ")
      escreval("")
      escreval("")
      escreval("|  [1]OPERACIONAL  |  [2]FINANCEIRO  |  [3]RH  |  [4]SAIR  |")
      escreval("")
      escreval("")
      leia(opc)

      ESCOLHA (opc)

         // SETOR OPERACIONAL---------------------------------------
      CASO 1
         repita
            limpatela
            escreval("----------------------------------------------------------")
            escreval("                      OPERACIONAL                         ")
            escreval("----------------------------------------------------------")
            escreval("")
            escreval("[1] CADASTRO DE PRODUTOS")
            escreval("[2] SA�DA DE PRODUTOS")
            escreval("[3] PESQUISAR PRODUTO")
            escreval("[4] CAPACIDADE ")
            escreval("[5] LISTAR ITENS DO ESTOQUE")
            escreval("[6] VOLTAR")
            escreval("")
            escreval("")
            leia(opc2)

            escolha (opc2)

               // CADASTRO DE PRODUTOS ---------------------------------
            caso 1
               cadProdutos ()
               //=======================================================

               // SA�DA DE PRODUTOS
            caso 2
               saidaProdutos ()
               //=======================================================

               // PESQUISA ---------------------------------------------
            caso 3
               pesquisar()
               //=======================================================

               // CAPACIDADE -------------------------------------------
            caso 4
               capacidade()
               //=======================================================
            CASO 5
               Listagem()

            fimescolha
         ate opc2 = 6

         // FINANCEIRO -------------------------------------------------
      CASO 2
         repita
            limpatela
            escreval("----------------------------------------------------------")
            escreval("                       FINANCEIRO                         ")
            escreval("----------------------------------------------------------")
            escreval("")
            escreval("[1] DESPESAS FIXAS")
            escreval("[2] SERVI�O DO CENTRO DE DISTRIBUI��O")
            escreval("[3] LUCRO SOBRE PRODUTOS")
            escreval("[4] VOLTAR")
            leia(opc3)
            escreval("")
            escreval("")
            
            escolha opc3
                  caso 1
                      CUSTOS ()
                  caso 2
                      DispesaOP()
                  caso 3
                      lucroP()

            fimescolha

         ate opc3 = 4
         //=============================================================

      CASO 3
          repita
            limpatela
            escreval("----------------------------------------------------------")
            escreval("                     RECURSOS HUMANOS                     ")
            escreval("----------------------------------------------------------")
            escreval("")
            escreval("[1] CADASTRO DE FUNCIONARIOS")
            escreval("[2] CALCULAR SAL�RIO")
            escreval("[3] FUNCION�RIOS CADASTRADOS")
            escreval("[4] SAIR            ")
            leia(opc4)
            escreval("")
            escreval("")
            
            escolha opc4
                   caso 1
                       cadfuncionario ()
                   caso 2
                       calcsalario ()
                   caso 3
                      topoF ()
                      
            fimescolha
          ate opc4 = 4


      FIMESCOLHA

   ate opc = 4




fimalgoritmo