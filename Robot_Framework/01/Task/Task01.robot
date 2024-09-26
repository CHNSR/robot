
*** Keywords ***
Validate Age
    [Arguments]    ${age}
    IF  ${age} >= 18
        Log To Console    Eligible for voting
    ELSE
        Log To Console    Not eligible for voting
    END

*** Test Cases ***
Test 01
    Validate Age    age=16
Test 02
    Validate Age    age=20