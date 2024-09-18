*** Settings ***
Variables    user_info.yaml

*** Keywords ***
Validation User Permission
    [Arguments]    ${user}
    Log To Console    userID: ${user['userId']}
    IF    $user['user_role'] == 'customer' or $user['user_role'] == 'employee'  
        Log To Console    access page 1 (for user sign in).
    END
    IF    $user['user_role'] == 'employee'
        Log To Console    access page 2 (for employee).
    ELSE
        Log To Console    access page 3 for everyone can access this page.
    END

*** Test Cases ***
Test01
    FOR  ${user}  IN  @{users}
        Validation User Permission    ${user}
    END
    
