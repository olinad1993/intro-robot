*** Settings ***
Documentation    Exemplos utilizando Dicionario: Quantos dias tem cada mês

*** Variables ***
# 2 - Crie uma variável do tipo DICIONÁRIO na seção de variáveis globais que contenha nela os meses do ano e, 
# para cada mês, informe o número de dias desse mês;
&{DIAS_POR_MES}             janeiro=31    
...                         fevereiro=28    
...                         marco=31    
...                         abril=30    
...                         maio=31    
...                         junho=30   
...                         julho=31    
...                         agosto=31    
...                         setembro=30    
...                         outubro=31    
...                         novembro=30    
...                         dezembro=31

# 3 - Crie um teste que imprima no Console (Log To Console) cada mês e a sua respectiva quantidade de dias.
*** Test Cases ***
Imprimir dias por mês de 2022

    Log To Console        Em JANEIRO há ${DIAS_POR_MES.janeiro} dias!
    Log To Console        Em FEVEREIRO há ${DIAS_POR_MES.fevereiro} dias!
    Log To Console        Em MARÇO há ${DIAS_POR_MES.marco} dias!
    Log To Console        Em ABRIL há ${DIAS_POR_MES.abril} dias!
    Log To Console        Em MAIO há ${DIAS_POR_MES.maio} dias!
    Log To Console        Em JUNHO há ${DIAS_POR_MES.junho} dias!
    Log To Console        Em JULHO há ${DIAS_POR_MES.julho} dias!
    Log To Console        Em AGOSTO há ${DIAS_POR_MES.agosto} dias!
    Log To Console        Em SETEMBRO há ${DIAS_POR_MES.setembro} dias!
    Log To Console        Em OUTUBRO há ${DIAS_POR_MES.outubro} dias!
    Log To Console        Em NOVEMBRO há ${DIAS_POR_MES.novembro} dias!
    Log To Console        Em DEZEMBRO há ${DIAS_POR_MES.dezembro} dias!

        
# 4 - Rode os testes e confira se logou tudo certinho!




