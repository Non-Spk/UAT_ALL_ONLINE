*** Keywords ***
Type Store Code
    [Tags]    StoreCode    Input
    [Arguments]    ${StoreCode}
    common.Type Into Textbox    ${all_online_type_storecode_locator['txt_storecode']}    ${StoreCode}
    common.Tap Element    ${all_online_type_storecode_locator['btn_submit']}
