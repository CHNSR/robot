*** Test Cases *** 
Print Fruit List 
    @{fruits}    Create List    banana    apple    cherry
    FOR  ${fruit}  IN  @{fruits}
        Log To Console    ${fruit}
    END
    