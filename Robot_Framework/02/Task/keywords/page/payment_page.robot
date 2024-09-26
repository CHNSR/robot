*** Settings ***
Resource    ./import.robot
*** Keywords ***
Select Payment Method
    Click Element    ${payment_locator.cradite_radio}
    SeleniumLibrary.Click Element    //button/span[text()='Next']    #${payment_locator.next_btn}

Fill card number in Credit Card Details
    [Arguments]    ${creditcard}    
    SeleniumLibrary.Input Text    ${payment_locator.card_number_container}    ${creditcard}

Fill expire date in Credit Card Details    
    [Arguments]    ${exp}    
    SeleniumLibrary.Input Text    ${payment_locator.exp_container}    ${exp}

Fill cvc in Credit Card Details 
    [Arguments]    ${cvc}
    SeleniumLibrary.Input Text    ${payment_locator.cvc_container}    ${cvc}

Fill card holder name in Credit Card Details 
    [Arguments]    ${name}    
    SeleniumLibrary.Input Text    ${payment_locator.holder_name_container}    ${name} 

Click ConfirmPayment
    SeleniumLibrary.Click Button    ${payment_locator.confirm_payment_btn}
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.ok_btn}
    SeleniumLibrary.Click Button    ${payment_locator.ok_btn}

Click Continue Shopping
    SeleniumLibrary.Wait Until Element Is Visible    ${payment_locator.confirm_payment_btn}
    ${Get order information}=    Get Text    ${payment_locator.div_of_orderdetail}
    Click Element    ${payment_locator.continue_to_shoping}
    Log To Console    ${Get order information}