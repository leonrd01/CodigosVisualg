algoritmo "CALANGOS"
tipo
// REGISTRO DE CADASTRO DE PRODUTOS ------------------------------
   cad=registro
      codigo:inteiro
      nome:caractere
      fabricacao:real
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

var
// VÁRIAVEIS GLOBAIS ---------------------------------------------
   vetC:     vetor[1..2] de cad
   clientes: vetor[1..2] de caractere
   VETF:     vetor[1..2] de CADD
   N,S,desp1,resp2,nome: CARACTER
   DESP2,TOT1,TOT2,calc,opc,opc2,opc3: REAL
   quant,resp,codP,i,totI,aux: inteiro
//===================================================================
   
// SAÍDA DE DADOS ---------------------------------------------------
procedimento topo()
inicio
   escreval("")
   escreval("CÓDIGO: ",vetC[i].codigo)
   escreval("NOME : ",vetC[i].nome)
   escreval("ANO DE FABRICAÇÃO: ",vetC[i].fabricacao)
   escreval("FORNECEDOR: ",vetC[i].fornecedor)
   escreval("QUANTIDADE: ",vetC[i].quantidade)
   escreval("LOCAL DE ARMAZENAGEM: ",vetC[i].armazenagem)
   escreval("VALOR: ",vetC[i].valor)
   escreval("")
fimprocedimento
//====================================================================

// PESQUISA ----------------------------------------------------------
procedimento pesquisar()
inicio
  repita
   limpatela
   escreval("--------- PESQUISA --------")
   escreval("")
   escreval("TOTAL DE PRODUTOS CADASTRADOS:",totI)
   escreval("")
   escreval("")
   escreva("Digite o código : ")
   leia(codP)
   i <- 1
   enquanto (codP <> vetC[i].codigo) e (i <= 1) faca
      i <- i + 1
   fimenquanto
   escreval("")
   se codP = vetC[i].codigo entao
      limpatela
      escreval("Item possui cadastro")
      topo()
   senao
        escreval("Item não possui cadastro")
   fimse
   escreval("")
   escreval("Deseja realizar outra pesquisa ? [S/N]")
       leia(resp2)
  ate maiusc(resp2) = "N"
fimprocedimento
//====================================================================

// CÁLCULO DE CAPACIDADE ---------------------------------------------
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
   ESCREVAL (" CAPACIDADE DE PRODUÇÃO DIÁRIA ", DIARIO," UNIDADES")
   leia(resp)
FIMPROCEDIMENTO
//======================================================================

// CADASTRO DE PRODUTOS ------------------------------------------------
procedimento cadProdutos ()
inicio
      resp2 <- "S"
      i <- 1
      enquanto (maiusc(resp2) = "S") e (i <= 2) faca
              limpatela
              escreval("-------------------------------")
              escreval("     CADASTRO DE PRODUTOS      ")
              escreval("-------------------------------")
              escreval("")
              escreval("")
              escreval(" PREENCHA COM OS DADOS ABAIXO: ")
              escreval("")
              escreval("")
              escreva("NOME: ")
                 leia(nome)
                  aux <- i
                  i <- 1
                  enquanto (nome <> vetC[i].nome) e (i <= 1) faca
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
                      escreva("CÓDIGO DO PRODUTO: ")
                         leia(vetC[i].codigo)
                      escreva("DATA DE FABRICAÇÃO: ")
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
fimprocedimento
//=======================================================================

// SAÍDA DE PRODUTOS ----------------------------------------------------
procedimento saidaProdutos ()
inicio
      repita
            limpatela
            escreva("Digite o código do produto que deseja realizar o pedido: ")
               leia(codP)
               i <- 1
            enquanto (codP <> vetC[i].codigo) e (i <= 1) faca
                    i <- i + 1
            fimenquanto

            se codP = vetC[i].codigo entao
              limpatela
              escreval("CÓDIGO DO PRODUTO: ",vetC[i].codigo)
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
                      escreval("*QUANTIDADE DO PEDIDO ACIMA DO DISPONÍVEL NO ESTOQUE, DIGITE UM VALOR VÁLIDO!!*")
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
              escreval("CÓDIGO DO PEDIDO: 00",i)
              escreval("PRODUTO: ",vetC[i].nome)
              escreval("CLIENTE: ",clientes[i])
              escreval("QUANTIDADE DO PEDIDO: ",quant)
              escreval("TOTAL DE ITENS RESTANTES NO ESTOQUE: ",vetC[i].quantidade)
              senao
                   escreval("")
                   escreval("*PRODUTO NÃO ENCONTRADO*")
              fimse

              escreval("")
              escreval("Deseja realizar outro pedido ? [S/N]")
                  leia(resp2)



      ate maiusc(resp2) = "N"
fimprocedimento
//========================================================================

// CÁLCULO DE GASTOS -----------------------------------------------------
PROCEDIMENTO  CUSTOS ()
Inicio
  repita
     limpatela
     ESCREVAL("-------------- CÁLCULO DE DESPESAS FIXAS --------------")
     ESCREVAL("")
     ESCREVAL("")
     ESCREVAL("- INFORME O GASTO NO MÊS COM: ")
     ESCREVAL("")
     ESCREVA("ÁGUA: ")
         LEIA(VETF.AGUA)
     ESCREVA("LUZ: ")
        LEIA(VETF.LUZ)
     ESCREVA("SALÁRIO DE EMPREGADOS: ")
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
         ESCREVAL("O TOTAL DE GASTOS NO MÊS FOI DE R$ ",CALC )
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
         ESCREVAL("O TOTAL DE GASTOS NO MÊS FOI DE R$: ",CALC)
         ESCREVAL("-------------------------------------------")
      FIMSE
   ATE maiusc(resp2) = "N"
   ESCREVAL("")
   ESCREVAL("DESEJA REAIZAR OUTRO CÁULCULO ? [S/N]")
       LEIA(resp2)
 ATE maiusc(resp2) = "N"
 FIMPROCEDIMENTO
//======================================================================
inicio
   repita
      limpatela
      escreval("----------------------------------------------------------")
      escreval("                    *CARANGOS S/A*                                          ")
      escreval("__________________________________________________________")
      escreval("")
      escreval("                        *MENU*                           ")
      escreval("")
      escreval("")
      escreval("  [1]OPERACIONAL    [2]FINANCEIRO   [3]RECURSOS HUMANOS   ")
      escreval("")
      escreval("")
      leia(opc)

      ESCOLHA (opc)

         // SETOR OPERACIONAL---------------------------------------
      CASO 1
         repita
            limpatela
            escreval("------------------------------------------")
            escreval("             OPERACIONAL                  ")
            escreval("------------------------------------------")
            escreval("")
            escreval("[1] CADASTRO DE PRODUTOS")
            escreval("[2] SAÍDA DE PRODUTOS")
            escreval("[3] PESQUISAR PRODUTO")
            escreval("[4] VOLTAR ")
            escreval("")
            escreval("")
            leia(opc2)

            escolha (opc2)

            // CADASTRO DE PRODUTOS ---------------------------------
            caso 1
                cadProdutos ()
            //=======================================================
            
            // SAÍDA DE PRODUTOS
            caso 2
                 saidaProdutos ()
            //=======================================================
            
            // PESQUISA ---------------------------------------------
            caso 3
                 pesquisar()
            //=======================================================
            
            // CAPACIDADE -------------------------------------------
            caso 5
                capacidade()
            //=======================================================

            fimescolha
         ate opc2 = 4

      // FINANCEIRO -------------------------------------------------
      CASO 2
        repita
          limpatela
          escreval("------------------------------------------")
          escreval("               FINANCEIRO                 ")
          escreval("------------------------------------------")
          escreval("")
          escreval("[1] DESPESAS FIXAS")
          escreval("[2] SERVIÇO DO CENTRO DE DISTRIBUIÇÃO")
          escreval("[3] LUCRO SOBRE PRODUTOS")
          escreval("[4] VOLTAR")
              leia(opc3)
          escreval("")
          escreval("")
          escolha opc3
                 caso 1
                     CUSTOS ()
                 caso 2
                 
                 caso 3
          
          
          fimescolha

        ate opc3 = 4
      //=============================================================
      
      

      FIMESCOLHA

   ate opc = 4




fimalgoritmo