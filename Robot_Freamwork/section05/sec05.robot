*** Variables ***

*** Keywords ***

Basic if else
    [Arguments]    ${text}
    IF  "${text}"=="yes"
        Log To Console    I am IF
    ELSE
        Log To Console    I am ELSE
    END
    
Basic elif
    [Arguments]    ${text}
    IF  "${text}"=="yes"
        Log To Console    if
    ELSE IF    "${text}"=="no"
        Log To Console    elif
    ELSE
        Log To Console    else           
    END

Grade calculator
    [Arguments]    ${point}
    IF  ${point} >= 90
        Log To Console     Grade A
    ELSE IF    ${point} < 90 and ${point} >= 80
        Log To Console    Grade B
    ELSE IF    ${point} < 80 and ${point} >= 70
        Log To Console    Grade C
    ELSE IF    ${point} < 70 and ${point} >= 60
        Log To Console    Grade D
    ELSE 
        Log To Console     Grade F
        
    END
    
    
*** Test Cases ***
Test 1
    Basic if else    text=no
Test 2
    Basic elif    text=yes
Test 3
    Grade calculator    point=70
