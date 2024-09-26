*** Keywords ***
Creat Fruit List   
    ${fruits}  Create List   apple    banana    cherry
    Return From Keyword    ${fruits}
*** Test Cases ***
Test01
    ${fruits}    Creat Fruit List    
    Log To Console    ${fruits[0]}