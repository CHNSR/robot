*** Settings ***
Resource    ../page/import.robot
*** Keywords ***
Add credit card and payment
    [Arguments]    ${creditcard}    ${exp}    ${cvc}    ${name}
    payment_page.Add card number    ${creditcard}  
    payment_page.Add expire date   ${exp}        
    payment_page.Add cvc    ${cvc} 
    payment_page.Add card holder name    ${name} 
    payment_page.Click ConfirmPayment
    payment_page.Click continue shopping
