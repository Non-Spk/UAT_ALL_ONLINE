*** Settings ***
Resource    ${CURDIR}/../../resources/import.robot

*** Test Cases ***
Case 01 - User login with null value.
    all_online_user_login_feature.User login
    ...     ${account_information['account_01']['username']}
    ...     ${account_information['account_01']['password']}
    common.Verify Element Text
    ...     ${all_online_signin_locator['txt_error_box']}
    ...     ${account_information['account_01']['error_message']}
    common.Close Application

Case 02 - User login with invalid username.
    all_online_user_login_feature.User login
    ...     ${account_information['account_02']['username']}
    ...     ${account_information['account_02']['password']}
    common.Verify Element Text
    ...     ${all_online_signin_locator['txt_error_message']}
    ...     ${account_information['account_02']['error_message']}
    common.Close Application

Case 03 - User login with invalid password.
    all_online_user_login_feature.User login
    ...     ${account_information['account_03']['username']}
    ...     ${account_information['account_03']['password']}
    common.Verify Element Text
    ...     ${all_online_signin_locator['txt_error_message']}
    ...     ${account_information['account_03']['error_message']}
    common.Close Application

Case 04 - User login with invalid username and password.
    all_online_user_login_feature.User login
    ...     ${account_information['account_04']['username']}
    ...     ${account_information['account_04']['password']}
    common.Verify Element Text
    ...     ${all_online_signin_locator['txt_error_message']}
    ...     ${account_information['account_04']['error_message']}
    common.Close Application

Case 05 - User login with valid username and password.
    all_online_user_login_feature.User login
    ...     ${account_information['account_05']['username']}
    ...     ${account_information['account_05']['password']}
    AppiumLibrary.Wait Until Page Contains Element    ${all_online_type_storecode_locator['txt_storecode']}    30s
    common.Close Application