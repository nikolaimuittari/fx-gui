*** Settings ***
Library  Browser

*** Variables ***
${URL}  https://example.com

*** Keywords ***
Open Browser To Application
    New Page  ${URL}
    Set Viewport Size  1920  1080