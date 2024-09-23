*** Keywords ***
Generate Customer Profile
    [Arguments]    ${output_format}    &{customer_data}
    Log To Console    Name: ${customer_data['personal_info']['name']}
    Log To Console    Email: ${customer_data['personal_info']['email']}
    Log To Console    Phone: ${customer_data['personal_info']['phone']}
    Log To Console    Account ID: ${customer_data['account_info']['account_id']}
    Log To Console    Balance: ${customer_data['account_info']['balance']}
    Log To Console    Status: ${customer_data['account_info']['status']}
    Log To Console    Preferences: ${customer_data['preferences']}
    Log To Console    Output Format: ${output_format}

*** Test Cases ***
Test01
    &{customer_data}=    Create Dictionary    
    ...    personal_info={'name':'Antony The hurricane', 'email':'100M@manu.com', 'phone':'01020304'}
    ...    account_info={'account_id':'12345', 'balance':'1000', 'status':'active'}
    ...    preferences=['email_notifications', 'sms_alerts']
    ${output_format}=    Set Variable    pdf
    Generate Customer Profile    ${output_format}    &{customer_data}
