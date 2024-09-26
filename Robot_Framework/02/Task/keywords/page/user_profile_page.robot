*** Settings ***
Resource    ./import.robot

*** Keywords ***

Show Preparing 
    Wait Until Element Is Visible    ${user_profile_locator.pending_lebel}
    Scroll Element Into View    ${user_profile_locator.table}
    
Get order form Pending payment
    ${GetOrderID}=    Get Text    ${user_profile_locator.orderId}
    Log To Console    OrderId form Pending payment: ${GetOrderID}

Log out
    Click Button    ${user_profile_locator.logout_btn} 