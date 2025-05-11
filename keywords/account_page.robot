*** Settings ***
Library  AppiumLibrary
Variables  ../resources/locators.py

*** Keywords ***
User Is In Account Page as Non-Logged In User
    Wait Until Element Is Visible    ${SignInSection}    10s
    Element Should Be Visible    ${SignInSection}

User Is In Account Page as Logged In User
    Wait Until Element Is Visible    ${ViewProfileSection}    10s
    Element Should Be Visible    ${ViewProfileSection}

User Navigate To Log In Page
    Click Element    ${SignInSection}
