*** Settings ***
Documentation    Exemplos utilizando listas: Mês do ano

*** Variables ***
# 2 - Crie uma variável do tipo LISTA na seção de variáveis globais que contenha todos os meses do ano;
@{MES_ANO}    janeiro    fevereiro    marco    abril    maio    junho    julho    agosto    setembro    outubro    novembro    dezembro


*** Test Cases ***
# 3 - Crie um teste que imprima no Console (Log To Console) cada item dessa lista (não use FOR, imprima um a um).

Caso de teste 01
    Cenario meses do ano
    
*** Keywords ***
Cenario meses do ano
    Log     Mes 01: ${MES_ANO[0]} 
    Log     Mes 02: ${MES_ANO[1]} 
    Log     Mes 03: ${MES_ANO[2]}
    Log     Mes 04: ${MES_ANO[3]}
    Log     Mes 05: ${MES_ANO[4]} 
    Log     Mes 06: ${MES_ANO[5]}
    Log     Mes 07: ${MES_ANO[6]}
    Log     Mes 08: ${MES_ANO[7]}
    Log     Mes 09: ${MES_ANO[8]}
    Log     Mes 10: ${MES_ANO[9]} 
    Log     Mes 11: ${MES_ANO[10]} 
    Log     Mes 12: ${MES_ANO[11]}
        
# 4 - Rode os testes e confira se logou tudo certinho!




