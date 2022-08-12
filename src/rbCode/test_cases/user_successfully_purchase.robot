*** Settings ***
Documentation    Feature: Customer Purchase
Resource    ../step_definitions_pl/purchase.resource

*** Test Cases ***
User Successfully Purchase Product On Midtrans
    User Open Midtrans Purchase Frontpage
    User Click Buy Now To Proceed The Purchase
    User Input Mandatory Form For Purchasing Goods ${PURCHASE_DATA}
    User Click Checkout To Go To Payment Page
    User Click Credit Card On The List For Payment
    User Input Credit Card Details For Payment ${CC_DATA}