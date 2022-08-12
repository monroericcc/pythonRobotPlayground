*** Settings ***

Resource    ../page_objects_pl/base_purchase.resource
Resource    ../page_objects_pl/base_payment.resource

*** Keywords ***
User Open Midtrans Purchase Frontpage 
    Navigate To MidTrans Frontpage

User Click Buy Now To Proceed The Purchase
    Click Buy Now Button

User Input Mandatory Form For Purchasing Goods ${purchasedata}
    Input Goods Price    ${purchasedata}[goods_price]
    Input Customer Name    ${purchasedata}[cust_name]
    Input Customer Email    ${purchasedata}[cust_email]
    Input Customer Phone Number    ${purchasedata}[cust_phone_num]
    Input Customer City    ${purchasedata}[cust_city]
    Input Customer Address    ${purchasedata}[address]
    Input Customer Postal Code    ${purchasedata}[cust_postal_code]

User Click Checkout To Go To Payment Page
    Click Checkout Button

User Click Credit Card On The List For Payment
    Click Payment List Using Credit card

User Input Credit Card Details For Payment ${ccdetails}
    Input Credit Card Number    ${ccdetails}[cc_number]
    Input Credit Card Expiaration Date    ${ccdetails}[cc_expiration_date]
    Input Credit Card CVV    ${ccdetails}[cc_cvv]