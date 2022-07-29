*** Settings ***
Documentation   Este é um teste para acessar Amazon.com
Resource        amazon_resources.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Este teste verifica o menu "Eletrônicos do site da amazon.com.br
    ...                 e verifica a categoria computadores e informática  
    [Tags]              menus   categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página




Caso de teste 02 - Pesquisa de Produto
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              busca_produtos
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página