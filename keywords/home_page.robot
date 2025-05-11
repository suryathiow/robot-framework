*** Settings ***
Library  AppiumLibrary
Variables  ../resources/locators.py

*** Keywords ***
Handle Privacy Popup If Present
    Sleep    1s
    ${popup_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${PrivacyPopupTitle}    2s
    IF    ${popup_visible}
        Click Element    ${PrivacyAgreeButton}
    END

Handle Onboarding If Present
    ${onboarding_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${FirstQuestionPageTitle}    2s
    IF    ${onboarding_visible}
        Click Element    ${SkipButton}
    END

Handle Homepage Popup If Present
    ${popup_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${HomepagePopupCloseButton}    2s
    IF    ${popup_visible}
        Click Element    ${HomepagePopupCloseButton}
    END

User Is In Homepage
    Wait Until Element Is Visible    ${HomepageUserTab}    10s
    Element Should Be Visible    ${HomepageUserTab}

User Navigate To Account Page
    Click Element    ${HomepageUserTab}
