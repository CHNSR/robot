*** Settings ***
Resource    ../page/import.robot
*** Keywords ***
Fill in Delivery info and Start Payment Process
    [Arguments]    ${name}    ${surname}    ${address}    ${phone}    ${email}
    Input name in Delivery info    ${name}
    Input surName in Delivery info    ${surname}
    Input address in Delivery info    ${address}
    Input phone in Delivery info    ${phone}
    Input email in Delivery info    ${email}
    Click Pay button