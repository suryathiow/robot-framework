*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}   http://127.0.0.1:7070
${platformName}    android
${appium:deviceName}    [DEVICE_NAME]
${appium:app}    [APK_FILE_PATH]
${appium:platformVersion}    13.0
${appium:automationName}    UiAutomator2
${appium:appPackage}    [APP_PACKAGE]
${appium:appActivity}    [APP_ACTIVITY]
${appium:noReset}    ${True}
${appium:fullReset}    ${False}
${appium:autoAcceptAlerts}    ${True}
${appium:nativeWebScreenshot}    ${True}
${appium:newCommandTimeout}    3600
${appium:forceAppLaunch}    ${True}
${appium:uninstallOtherPackages}    [APP_PACKAGE]

*** Keywords ***
Open Appium Session
    Open Application    ${REMOTE_URL}
    ...    platformName=${platformName}
    ...    deviceName=${appium:deviceName}
    ...    app=${appium:app}
    ...    platformVersion=${appium:platformVersion}
    ...    automationName=${appium:automationName}
    ...    appPackage=${appium:appPackage}
    ...    appActivity=${appium:appActivity}
    ...    noReset=${appium:noReset}
    ...    fullReset=${appium:fullReset}
    ...    autoAcceptAlerts=${appium:autoAcceptAlerts}
    ...    nativeWebScreenshot=${appium:nativeWebScreenshot}
    ...    newCommandTimeout=${appium:newCommandTimeout}
    ...    forceAppLaunch=${appium:forceAppLaunch}
    ...    uninstallOtherPackages=${appium:uninstallOtherPackages}

Close Appium Session
    Close Application
