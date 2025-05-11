*** Settings ***
Library  AppiumLibrary
Resource    ../config.robot
Resource    home_page.robot

*** Keywords ***
App Is Open
    Open Appium Session
    Handle Privacy Popup If Present
    Handle Onboarding If Present
