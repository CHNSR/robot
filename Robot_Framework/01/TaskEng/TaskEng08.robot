*** Settings ***
Library    Collections

*** Keywords ***
Aggregate Financial Data
    [Arguments]    ${include_totals}    &{aggregation_config}
    Log To Console    data_sources: ${aggregation_config['data_sources']}
    Log To Console    rude: ${aggregation_config['rude']}

*** Test Cases ***
Test01
    ${include_total}    Set Variable    False
    ${aggregation_config}=    Create Dictionary
       ...    data_sources={ "bank_accounts": "kasikorn", "investment_portfolios": 2000000 }
       ...    rude={"sum":50000, "average":0.085}
    Aggregate Financial Data    ${include_total}    &{aggregation_config}