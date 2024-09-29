*** Settings ***
Resource    ../page/import.robot
*** Keywords ***
Fill address detail and start payment
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    Wait Until Element Is Visible    ${cart_locator.input_box} 
    cart_page.Input name     ${name}
    cart_page.Input surName    ${surname}
    cart_page.Input address     ${address}
    cart_page.Input phone    ${phone}
    cart_page.Input email     ${email}
    cart_page.Click pay button

Purchase product
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    common.Open Cart
    Fill address detail and start payment    
    ...    ${name}    
    ...    ${surname}    
    ...    ${address}    
    ...    ${phone}    
    ...    ${email}
    payment_page.Select Payment Method
    
