*** Settings ***
Resource    import.robot    # robotcode: ignore
*** Keywords ***
Search product in search bar
    [Arguments]    ${searchtxt}
    SeleniumLibrary.Input Text     ${home_locator.input_txt}    ${searchtxt}
    SeleniumLibrary.Click Element    ${home_locator.search_btn}

Add product to cart
    [Arguments]    ${add_to_cart_button}
    SeleniumLibrary.Wait Until Element Is Visible    ${add_to_cart_button}
    SeleniumLibrary.Click Element        ${add_to_cart_button}
    
