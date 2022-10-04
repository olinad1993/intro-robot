*** Settings ***
Documentation   Exemplo de tipos de variáveis: SIMPLES, LISTAS e DICIONÁRIOS
*** Variable ***
#Simples
${SIMPLES}   Vamos ver os tipos de variáveis no robot!

#Tipo Lista
@{FRUTAS}    morango   banana   maça   uva   abacaxi

#Tipo Dicionário
&{PESSOA}    nome=Danilo Ferreira   email=danilo@teste.com idade=29   sexo=masculino

*** Test Cases ***
Caso de teste de exemplo 01
    Uma keyword qualquer 01

*** Keywords ***
Uma keyword qualquer 01
    #Simples
    Log    ${SIMPLES}

    #Lista
    Log    Essa tem que ser maça: ${FRUTAS[2]} e essa tem que ser morango: ${FRUTAS[0]}

    #Dicionário
    Log    Nome: ${PESSOA.nome} e email: ${PESSOA.email}
