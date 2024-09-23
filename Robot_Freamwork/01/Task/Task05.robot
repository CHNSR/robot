*** Keywords ***
Print All Items
    [Arguments]    @{items}
    FOR  ${item}  IN  @{items}
        Log To Console    ${item}
    END

*** Test Cases ***
Test01    
    Print All Items    banana    apple    cherry