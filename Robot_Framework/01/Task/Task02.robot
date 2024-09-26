
*** Keywords ***

Print Fruits
    [Arguments]    @{fruit}
    FOR  ${fruit}  IN  @{fruit}
        Log To Console    Lobot FOR ${fruit}
    
    END
    
    

*** Test Cases ***
Test01    
    Print Fruits    apple    banana     cherry  
    