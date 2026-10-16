*** Settings ***
Library    Browser

*** Test Cases ***
Controleer Welkomsttekst Op Ontwikkelomgeving
    # 1. Open een nieuwe Chromium browser (headless=False zodat we hem zien openspringen!)
    New Browser    browser=chromium    headless=False
    
    # 2. Surf naar jouw Ontwikkelomgeving
    New Page       http://192.168.1.68:8081
    
    # 3. Controleer of de juiste H1-koptekst op de pagina staat
    Get Text       h1    ==    Welkom op de ONTWERP-omgeving (O) van de DevOps cursus!
    Sleep    10
    # 4. Maak voor de zekerheid een screenshot van het resultaat
    Take Screenshot