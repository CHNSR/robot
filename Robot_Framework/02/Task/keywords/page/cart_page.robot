*** Settings ***
Resource    ./import.robot

*** Keywords ***
Input name 
    [Arguments]    ${name} 
    SeleniumLibrary.Input Text    ${cart_locator.input_txt_name}    ${name}

Input surname 
    [Arguments]    ${surname}    
    SeleniumLibrary.Input Text    ${cart_locator.input_txt_surName}    ${surname}

Input address 
    [Arguments]     ${address}
    SeleniumLibrary.Input Text    ${cart_locator.input_txt_address}    ${address}

Input phone 
    [Arguments]    ${phone}
    SeleniumLibrary.Input Text    ${cart_locator.input_txt_phone}     ${phone} 

Input email 
    [Arguments]    ${email}
    SeleniumLibrary.Input Text    ${cart_locator.input_txt_email}     ${email} 

Click pay button
    SeleniumLibrary.Click Button    ${cart_locator.pay_btn}