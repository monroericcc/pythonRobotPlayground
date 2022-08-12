*** Settings ***
Library    Browser
...        timeout=30s
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BROWSER}            Chromium
${HEADLESS}           false
${DOMAIN_URL}         https://demo.midtrans.com
${BROWSER_WIDTH}      1280
${BROWSER_HEIGHT}     720

*** Keywords ***
Open Browser And Visit ${url}
    New Browser    ${BROWSER}    headless=${HEADLESS}
    New Context    viewport={'WIDTH':${BROWSER_WIDTH}, 'HEIGHT':${BROWSER_HEIGHT}}    ignoreHTTPSErrors=True
    New Page    ${url}

