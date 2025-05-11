*** Settings ***
Library    AppiumLibrary
Resource    ../keywords/common_keywords.robot
Resource    ../keywords/account_page.robot
Resource    ../keywords/login_page.robot

*** Test Cases ***
Login Using Invalid Email
    Given App Is Open
    And User Is In Homepage
    And User Navigate To Account Page
    And User Is In Account Page as Non-Logged In User
    And User Navigate To Log In Page
    When User Choose To Log In Using Email
    And User Input Invalid Email
    Then Error Invalid Email Message Is Displayed

Login Using Invalid Password
    Given App Is Open
    And User Is In Homepage
    And User Navigate To Account Page
    And User Is In Account Page as Non-Logged In User
    And User Navigate To Log In Page
    When User Choose To Log In Using Email
    And User Input Valid Email
    And User Input Invalid Password
    And User Tap Login Button
    Then Error Invalid Password Message Is Displayed

Login Using Not Registered Email
    Given App Is Open
    And User Is In Homepage
    And User Navigate To Account Page
    And User Is In Account Page as Non-Logged In User
    And User Navigate To Log In Page
    When User Choose To Log In Using Email
    And User Input Not Registered Email
    And User Input Valid Password
    And User Tap Login Button
    Then Not Registered Email Popup Is Displayed

Login Test
    Given App Is Open
    And User Is In Homepage
    And User Navigate To Account Page
    And User Is In Account Page as Non-Logged In User
    And User Navigate To Log In Page
    When User Choose To Log In Using Email
    And User Input Valid Email
    And User Input Valid Password 
    And User Tap Login Button
    Then User Is In Account Page as Logged In User