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

#General Function Base

Click Choice
    [Arguments]    ${elements}
    Click    ${elements}

Click Choice On IFrame
    [Arguments]    ${iframe_elements}    ${elements}
    Click    ${iframe_elements} >>> ${elements}

Fill In Form
    [Arguments]    ${elements}    ${form_value}
    Fill Text    ${elements}    ${form_value}ß

Fill In Form IFrame
    [Arguments]    ${iframe_elements}    ${elements}    ${form_value}
    Fill Text    ${iframe_elements} >>> ${elements}    ${form_value}

Screenshot Page
    Take Screenshot    log_screenshot=true    fullPage=true