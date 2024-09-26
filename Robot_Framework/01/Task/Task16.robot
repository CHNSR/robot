*** Keywords ***
Calculate Factorial
    [Arguments]    ${number}
    Run Keyword If    ${number} == 1    Return From Keyword    1
    ${previous}=    Evaluate    ${number} - 1
    ${cal}=    Calculate Factorial    ${previous}
    ${result}=    Evaluate   ${number} * ${previous}
    Return From Keyword    ${result}
*** Test Cases ***
Test Factorial Calculation
    ${result}=    Calculate Factorial    5
    Log To Console      result: ${result}    
