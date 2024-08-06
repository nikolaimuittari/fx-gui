*** Settings ***
Resource  ../resources/keywords.robot
Resource  ../environment/browser_setup.robot
Suite Setup  Open Browser
Suite Teardown  Close Browser

*** Test Cases ***
Test Example Page Title
    [Documentation]  This test case verifies the title of the example page.
    Open Browser To Application
    ${title}=  Get Title
    Should Be Equal  ${title}  Example Domain

Test Example Page Content
    [Documentation]  This test case verifies the content of the example page.
    Open Browser To Application
    ${text}=  Get Text  xpath=//h1
    Should Be Equal  ${text}  Example Domain