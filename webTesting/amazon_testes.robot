*** Settings ***
Documentation   Este é um teste para acessar Amazon.com
Resource        ../webTesting/amazon_resources.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Este teste verifica o menu "Eletrônicos do site da amazon.com.br
    ...                 e verifica a categoria computadores e informática  
    [Tags]              menus   categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"


Caso de teste 02 - Pesquisa de Produto
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              produtos    busca   
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"