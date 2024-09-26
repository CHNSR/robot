*** Settings ***
Resource    import.robot    # robotcode: ignore
*** Keywords ***
Search product in search bar
    [Arguments]    ${searchtxt}
    SeleniumLibrary.Input Text     ${home_locator.input_txt}    ${searchtxt}
    SeleniumLibrary.Click Element    ${home_locator.search_btn}

Add product to cart
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.add_to_cart_btn}
    SeleniumLibrary.Click Element    ${home_locator.add_to_cart_btn}    
    

Wait and click ok
    SeleniumLibrary.Wait Until Element Is Visible     ${home_locator.ok_popup}    
    SeleniumLibrary.Click Element    ${home_locator.ok_popup}