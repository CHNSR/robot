*** Settings ***
Library    Collections

*** Keywords ***
Perform Data Migration
    [Arguments]    ${run_in_dry_mode}    &{migration_config}
    Log To Console    Running data migration with the following settings:
    Log To Console    Source System: ${migration_config['source_system']}
    Log To Console    Target System: ${migration_config['target_system']}
    Log To Console    Data Mappings: ${migration_config['data_mappings']}
    Log To Console    Dry Mode: ${run_in_dry_mode}

*** Test Cases ***
Test01
    ${migration_config}=    Create Dictionary
    ...    source_system=source1
    ...    target_system=target1
    ...    data_mappings={ "source_field1": "target_field1", "source_field2": "target_field2" }
    ${run_in_dry_mode}=    Set Variable    False
    Perform Data Migration    ${run_in_dry_mode}    &{migration_config}
