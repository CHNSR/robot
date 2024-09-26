*** Settings ***
Library    Collections

*** Keywords ***
Configure Access Control
    [Arguments]    ${apply_changes}    &{access_config}
    Log To Console    Applying changes: ${apply_changes}
    Log To Console    Access Configuration: ${access_config}

*** Test Cases ***
Test01
    #error
    ${access_config}=    Create Dictionary
    ...    roles=    Create Dictionary    admin=user    user=guest    guest=none
    ...    rules=    Create Dictionary    admin={"view": True, "edit": True}    user={"view": True, "edit": False}    guest={"view": False, "edit": False}
    ...    default_access=    Create Dictionary    access="none"
    
    ${apply_changes}=    Set Variable    True

    Configure Access Control    ${apply_changes}    &{access_config}
