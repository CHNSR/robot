*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Website
    SeleniumLibrary.Open Browser    ${uat.url}    gc

Click user icon
    SeleniumLibrary.Wait Until Element Is Visible    ${common_locator.user_icon}
    SeleniumLibrary.Click Element    ${common_locator.user_icon}

Open Cart
    SeleniumLibrary.Click Element    ${common_locator.shopping_cart_icon}