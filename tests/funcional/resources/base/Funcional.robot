*** Settings ***
Documentation  Configurações padrão
Library        Browser

*** Variables ***

${NAVEGADOR}    chromium
${LINK}    http://localhost:5173/#/
${LINKPROVA}    http://www.automationpractice.pl/index.php
${LARGURA_JANELA}    1920
${ALTURA_JANELA}    1080

*** Keywords ***

Iniciar Navegador    
    New Browser    ${NAVEGADOR}    headless=false
    New Context
    New Page    ${LINKPROVA}
    Set Viewport Size    ${LARGURA_JANELA}    ${ALTURA_JANELA}

        
            
Finalizar Teste
    Take Screenshot    fullPage=True