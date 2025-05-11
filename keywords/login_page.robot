*** Settings ***
Library  AppiumLibrary
Variables  ../resources/locators.py
Variables  ../resources/test_data.py

*** Keywords ***
Handle Google Account Popup If Present
    ${popup_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${GoogleAccountPopup}    10s
    IF    ${popup_visible}
        Click Element    ${CancelDeviceButton}
    END

User Choose To Log In Using Email
    Handle Google Account Popup If Present
    Click Element    ${LoginWithEmailButton}

Wait Email Field Is Displayed
    Wait Until Element Is Visible    ${EmailField}    10s

User Input Valid Email
    Wait Email Field Is Displayed
    Input Text    ${EmailField}    ${valid_email}

User Input Valid Password 
    Input Text    ${PasswordField}    ${valid_password}

User Input Invalid Email
    Wait Email Field Is Displayed
    Input Text    ${EmailField}    ${invalid_email}

User Input Not Registered Email
    Wait Email Field Is Displayed
    Input Text    ${EmailField}    ${not_registered_email}

User Input Invalid Password
    Wait Email Field Is Displayed
    Input Text    ${PasswordField}    ${invalid_password}

User Tap Login Button 
    Click Element    ${LoginButton}

Error Invalid Email Message Is Displayed
    Wait Until Element Is Visible    ${EmailInvalidError}    5s

Error Invalid Password Message Is Displayed
    Wait Until Element Is Visible    ${PasswordInvalidError}    5s

Not Registered Email Popup Is Displayed
    Wait Until Element Is Visible    ${EmailNotFoundPopupTitle}    5s
