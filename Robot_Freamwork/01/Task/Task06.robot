*** Keywords ***
set local varriable
    ${LOCAL_VAR}    Set Variable    "Local Var"
    Log To Console    ${LOCAL_VAR}
    
    
*** Test Cases ***

Teat01    
    set local varriable
    ${Groble}    Set Variable    Groble Var
    Log To Console    ${Groble}