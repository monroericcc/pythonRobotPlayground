*** Settings ***
Resource   general_resources.resource
Library    Browser

*** Variables ***
${btn_buynow}    xpath=//a[@class='btn buy']
${input_goods_price}    xpath=//div[@class='cart-section'][2]//tbody/tr[1]//input
${input_cust_name}    xpath=//div[@class='cart-section'][2]//tbody/tr[1]//input
${input_cust_email}    xpath=//div[@class='cart-section'][2]//tbody/tr[2]//input
${input_cust_phone_num}    xpath=//div[@class='cart-section'][2]//tbody/tr[3]//input
${input_cust_city}    xpath=//div[@class='cart-section'][2]//tbody/tr[4]//input
${input_cust_address}    xpath=//div[@class='cart-section'][2]//tbody/tr//textarea
${input_cust_postal_code}    xpath=//div[@class='cart-section'][2]//tbody/tr[6]//input
${btn_checkout}    xpath=//div[@class='cart-checkout']

*** Keywords ***
Navigate To MidTrans Frontpage
    Open Browser And Visit ${DOMAIN_URL}

Click Buy Now Button
    Click Choice    ${btn_buynow}

Input Goods Price
    [Arguments]    ${goods_price}
    Fill In Form    ${input_goods_price}    ${goods_price}   

Input Customer Name
    [Arguments]    ${cust_name}
    Fill In Form    ${input_cust_name}     ${cust_name}

Input Customer Email
    [Arguments]    ${cust_email}
    Fill In Form    ${input_cust_email}    ${cust_email}

Input Customer Phone Number
    [Arguments]    ${cust_phone_num}
    Fill In Form    ${input_cust_phone_num}    ${cust_phone_num}

Input Customer City
    [Arguments]    ${cust_city}
    Fill In Form    ${input_cust_city}    ${cust_city}

Input Customer Address
    [Arguments]    ${cust_address}
    Fill In Form    ${input_cust_address}    ${cust_address}

Input Customer Postal Code
    [Arguments]    ${cust_postal_code}
    Fill In Form    ${input_cust_postal_code}    ${cust_postal_code}

Click Checkout Button
    Click Choice    ${btn_checkout}
