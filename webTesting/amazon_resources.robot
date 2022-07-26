*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://www.amazon.com.br/
${LOGO}     //a[@href='/ref=nav_logo'][contains(.,'.com.br')]

*** Keywords ***

Abrir navegador
    Open Browser    browser=chrome


Fechar navegador    
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To   url=${URL}
    Wait Until Element Is Visible   locator=${LOGO}
