*** Settings ***
Resource    general_resources.resource

*** Variables ***
${payment_iframe}    id=snap-midtrans
${header_payment_list}    xpath=//div[@class='order-summary-section']
${btn_list_cc}    xpath=//a[@href='#/credit-card']
${input_cc_cardnumber}    xpath=//input[@autocomplete='cc-number']
${input_cc_expirationdate}    xpath=//input[@autocomplete='cc-exp']
${input_cc_cvv}    xpath=//input[@autocomplete='cc-csc']

*** Keywords ***
Click Payment List Using Credit card 
    Click    ${payment_iframe} >>> ${btn_list_cc}

Input Credit Card Number
    [Arguments]    ${cc_number}
    Fill Text    ${payment_iframe} >>> ${input_cc_cardnumber}    ${cc_number}

Input Credit Card Expiaration Date
    [Arguments]    ${cc_expiration_date}
    Fill Text    ${payment_iframe} >>> ${input_cc_expirationdate}    ${cc_expiration_date}

Input Credit Card CVV
    [Arguments]    ${cc_cvv}
    Fill Text    ${payment_iframe} >>> ${input_cc_cvv}    ${cc_cvv}