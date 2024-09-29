*** Settings ***
Resource    ../page/import.robot

*** Keywords ***
Search and add product to cart
    [Arguments]    ${searchtxt}    ${product_name}    
    home_page.Search product in search bar    ${searchtxt}
    SeleniumLibrary.Wait Until Element Is Visible    //div[@class='ant-card-meta-title' and text()='${product_name}']
    SeleniumLibrary.Click Element    //div[@class='ant-card-meta-title' and text()='${product_name}']
    home_page.Add product to cart    ${home_locator.add_to_cart_btn}
    common.Wait and click    ${home_locator.ok_box}     ${home_locator.ok_button}

Show order id in console
    common.Click user icon
    user_profile_page.Show orderid
    ${OrderID}    Get Text    ${user_profile_locator.orderID}
    Log To Console    orderID:${OrderID}
