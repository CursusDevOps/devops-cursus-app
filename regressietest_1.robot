*** Settings ***
Library    Browser

*** Test Cases ***
Regressietest Acceptatie Omgeving
    # Start een headless browser (essentieel voor containers!)
    New Browser    browser=chromium    headless=True

    # Open de Acceptatie-omgeving direct op poort 8083
    New Page       http://192.168.1.68:8083

    # Controleer of de juiste welkomsttekst op het scherm staat
    Get Text       h1    contains    Welkom op de ACCEPTATIE-omgeving (A) van devops.course!

    Take Screenshot
