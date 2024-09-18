*** Keywords ***
Fetch Report Data
    [Arguments]    ${return_format}    &{query_params}
    Log To Console    Data Source: ${query_params['data_source']}
    Log To Console    Filter Criteria: ${query_params['filter_criteria']}
    Log To Console    Sort Order: ${query_params['sort_order']}
    Log To Console    Return Format: ${return_format}
*** Test Cases ***
Test01
    &{query_params}=    Create Dictionary    data_source=db1    filter_criteria=["date_range", "status"]    sort_order=asc
    Fetch Report Data     json    &{query_params}