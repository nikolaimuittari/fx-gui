*** Settings ***
Resource        ${RESOURCES}/logs.resource
Resource        ${RESOURCES}/navigate.resource
Library         Browser

Test Setup      Go to main view


*** Test Cases ***
Logs page Features Walkthrough
    Events Log Features    autologin    1008_01_LJH_TE42_RH
    Debug Log Features
    Alarm Log Features    autologin    1008_01_LJH_TE42_RH


*** Keywords ***
Log page will load template
    [Arguments]    ${keyword}    ${selector}    ${click_selector}
    Run Keyword    ${keyword}
    Wait For Elements State    selector=${selector}    state=visible
    # Second time
    Click    ${click_selector}
    Wait For Elements State    selector=${selector}    state=visible
