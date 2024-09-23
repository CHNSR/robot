*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${username}=    chanon06@gmail.com
${password}=    12345678Chanon!
${searchtxt}=    phone
${phonePath}=    //div[text()='Aoppee phone']
${addCartPath}=    //span[text()='Add to cart']
${Get order information}
${GetOrderID}
${name}=    Chanom
${surname}=    Seesom
${address}=    Nu Pitsanulok   
${phoneNum}=    0987654321
#cradit data
${CardNum}=    4111111111111111    
${Date}=    05/2026
${CVC}=    055
${nameOnCard}=    Chanom Seesom
*** Keywords ***
Open url in chrome
    [Arguments]    ${url}
    Open Browser    ${url}    gc


Register doppioweb
    [Arguments]    ${username}    ${password}    
    Open url in chrome    https://training-platform.doppio-tech.com/
    Click Element    xpath=//header//span[@aria-label='user']
    Click Element    //button[span[text()='Sign up']]
    Input Text    //input[@id='basic_username']    ${username}
    Input Text    //input[@id='basic_password']    ${password}
    Input Text    //input[@id='basic_confirmPassword']    ${password}
    Click Element    //button[span[text()='SIGNUP']]
    #ระวังเพราะ widge นี้ ควรรอ
    Wait Until Element Is Visible    //button[span[text()='OK']] 
    Click Element   //button[span[text()='OK']]
    Close Browser

Login doppioweb
    [Arguments]    ${username}    ${password}
    Open url in chrome    https://training-platform.doppio-tech.com/
    Wait Until Element Is Visible    //header//span[@aria-label='user']    10s
    Click Element    xpath=//header//span[@aria-label='user']
    Input Text    //span[@aria-label='user']/ancestor::span/following-sibling::input    ${username}
    Input Text    //input[@type='password']    ${password}
    Click Element    //button[@type='submit']
    Wait Until Element Is Visible    //button[span[text()='OK']] 
    Click Element   //button[span[text()='OK']]
Search phone in search bar
    [Arguments]    ${searchtxt}
    Input Text     //input[@placeholder='input search text']    ${searchtxt}
    Click Element    //div[@class='search-container']/span//button

Select phone 
    [Arguments]    ${phonePath}
    Wait Until Element Is Visible    ${phonePath}
    Click Element    ${phonePath}

Add phone to chart 
    Wait Until Element Is Visible    //span[text()='Add to cart']
    Click Element    //span[text()='Add to cart']    
    Wait Until Element Is Visible     //span[text()='OK']    
    Click Element    //span[text()='OK']

Click chart ,Fill out the form and click pay
    [Arguments]    ${name}    ${surname}    ${address}    ${phoneNum}
    Click Element    //span[@aria-label='shopping-cart']
    Sleep    time_=2 seconds
    Input Text    //input[@placeholder='Name']    Chanom
    Input Text    //input[@placeholder='Surname']    ${surname}
    Input Text    //input[@placeholder='Shipping address']    ${address}
    Input Text    //input[@placeholder='Phone number']    ${phoneNum}
    Sleep    time_=5 seconds
    Click Element    //button/span[text()='PAY']


Select cradit 
    Click Element    //span[text()='Credit Card']
    Click Element    //button/span[text()='Next']


Input cradit card information
    [Arguments]    ${CardNum}    ${Date}    ${CVC}    ${name}
    Input Text    //input[@placeholder='Valid Card Number']    ${CardNum}
    Input Text    //input[@placeholder='MM/YYYY']    ${Date}
    Input Text    //input[@placeholder='CVC']    ${CVC}
    Input Text    //input[@placeholder='Card Owner Name']    ${name}
    Click Element    //button/span[text()='Confirm Payment']
    Wait Until Element Is Visible    //span[text()='OK']
    Click Element    //span[text()='OK']

Show Order and Navigate to shopping page
    Wait Until Element Is Visible    //div[@class='success-description']
    ${Get order information}=    Get Text    //div[@class='success-description']
    Click Element    //button/span[text()='Continue Shopping']
    Log To Console    ${Get order information}

Click user infomation
    Wait Until Element Is Visible    //span[@aria-label='user']
    Click Element    //span[@aria-label='user']

Show Preparing 
    Wait Until Element Is Visible    //div[text()='Pending payment']
    Scroll Element Into View    //tbody
    
Get order form Pending payment
    ${GetOrderID}=    Get Text    //td
    Log To Console    OrderId form Pending payment: ${GetOrderID}


*** Test Cases ***
#TC-01 register
#   Register doppioweb    ${username}    ${password}

Tc-02 Login 
    Login doppioweb    ${username}    ${password}
    
    Search phone in search bar    ${searchtxt}
    Select phone     ${phonePath}
    Add phone to chart     
    Click chart ,Fill out the form and click pay    ${name}    ${surname}    ${address}    ${phoneNum}
    Select cradit 
    Input cradit card information    ${CardNum}    ${Date}    ${CVC}    ${name}
    Show Order and Navigate to shopping page
    #Click user infomation
    #Show Preparing
    #Get order form Pending payment