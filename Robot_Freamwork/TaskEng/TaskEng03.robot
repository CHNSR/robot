*** Keywords ***
Execute Workflow
    [Arguments]    ${step}    ${log_progress}
    Log To Console    ${step}    
    Log To Console    ${log_progress}
    

*** Test Cases ***
Test01
    ${step}=    Create List    1    2    3    4    5
    ${log_progress}=    Set Variable    True
    Execute Workflow    ${step}    log_progress=${log_progress}