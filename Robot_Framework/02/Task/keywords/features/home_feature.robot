*** Settings ***
Resource    ../page/import.robot

*** Keywords ***
Click product and add product to cart
    [Arguments]    ${product_name}    
    Wait Until Element Is Visible   xpath=//div[text()='${product_name}']
    Click Element    xpath=//div[text()='${product_name}']
    Add product to cart 
    Wait and click ok

