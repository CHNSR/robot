*** Keywords ***
Greet User
    [Arguments]    ${name}="Guest"
    Log To Console    Hello, ${name}

*** Test Cases ***
Test01
    Greet User    
    
Test02
    Greet User    john
    