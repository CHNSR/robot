*** Keywords ***
Calculate Square
    [Arguments]    ${number}    
    ${result}    Evaluate    ${number}*${number}
    Return From Keyword    ${result}

*** Test Cases ***
Test01
    ${square_result}    Calculate Square    5
    Log To Console    Square of square is: ${square_result}

