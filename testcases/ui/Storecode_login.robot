*** Settings ***
Resource    ${CURDIR}/../../resources/import.robot

*** Test Cases ***
Case 01 - Login Storecode with null value.
    all_online_storecode_login_feature.Storecode Login
    ...     ${all_online_type_storecode_01['store_code']}
    ...     ${all_online_type_storecode_01['error_message']}
    DebugLibrary.Debug

Case 02 - Login Storecode with invalid value.
    all_online_storecode_login_feature.Storecode Login
    ...     ${all_online_type_storecode_02['store_code']}
    ...     ${all_online_type_storecode_02['error_message']}

Case 03 - Login Storecode with valid value.
    all_online_storecode_login_feature.Storecode Login
    ...     ${all_online_type_storecode_03['store_code']}
    ...     ${all_online_type_storecode_03['error_message']}
