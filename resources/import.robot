*** Settings ***
#Library
Library    AppiumLibrary
Library    DebugLibrary

#Resource file
Variables   ${CURDIR}/testdata/common_data.yaml
Variables    ${CURDIR}/settings/setting.yaml

#Common keyword and database
Resource    ${CURDIR}/../keywords/common/common.robot

#FEATURES
Resource    ${CURDIR}/../keywords/ui/features/all_online_storecode_login_feature.robot
Resource    ${CURDIR}/../keywords/ui/features/all_online_user_login_feature.robot

#PAGES
Resource    ${CURDIR}/../keywords/ui/pages/all_online_signin_message_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/all_online_signin_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/all_online_type_storecode_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/all_online_error_storecode_page.robot

#LOCATOR
Resource    ${CURDIR}/../keywords/ui/locator/all_online_signin_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/all_online_type_storecode_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/all_online_error_storecode_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/all_online_homepage_locator.robot

#Testdata UI
Variables    ${CURDIR}/testdata/ui/all_online_storecode.yaml