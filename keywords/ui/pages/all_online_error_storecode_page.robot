*** Keywords ***
Verify Error Message
    [Tags]  StoreCode    FAIL    Error
    [Arguments]    ${error_message}
    common.Verify Element Text    ${all_online_error_storecode_locator['txt_error_message']}    ${error_message}
    