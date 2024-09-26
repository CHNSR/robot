*** Keywords ***
Validate API Response
    [Arguments]    ${response_code}    ${validate_header}    &{api_response}
    #${api_response_var}=    Evaluate    {api_response}
    Log To Console    Expected Response Code: ${api_response}
    Log To Console    Validate Headers: ${validate_header}
    Log To Console    API Response: ${api_response}

*** Test Cases ***
Test01
    &{api_response}=    Create Dictionary    status=200    body={ "key": "value" }    headers={ "Content-Type": "application/json" }
    ${response_code}=   Set Variable    200
    ${validate_headers}=    Set Variable    True
    Validate API Response    ${response_code}    ${validate_headers}    &{api_response}
