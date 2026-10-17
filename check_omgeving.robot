*** Settings ***
Library    Browser

*** Test Cases ***
Controleer Of Website Correct Draait
    # Open de browser (headless voor CI/CD pipelines)
    New Browser    browser=chromium    headless=True
    
    # We gebruiken de dynamische variabele ${URL} uit de TOML file
    New Page       ${URL}
    Log To Console    ${URL}
    ${h1}    Get Text    h1
    Log To Console    ${h1}
        
    # Controleer of de pagina de juiste omgevingsnaam bevat
    Get Text       h1    contains    ${OMGEVING}
    
    Take Screenshot