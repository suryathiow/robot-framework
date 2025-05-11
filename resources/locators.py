# General Button
SkipButton = "accessibility_id=Skip"
NextButton = "xpath=//com.lynx.tasm.behavior.ui.LynxFlattenUI[@content-desc='Next']"
CancelDeviceButton = "accessibility_id=Cancel"
CancelButton = "id=cancel"
ConfirmButton = "id=confirm"

# Privacy popup
PrivacyPopupTitle = "id=privacy_title"
PrivacyAgreeButton = "id=privacy_ok"

# Onboarding
## First Question
FirstQuestionPageTitle = "xpath=//com.lynx.tasm.behavior.ui.text.FlattenUIText[@content-desc='Which of the following roles best describes you?']"

# Home Page
HomepagePopupCloseButton = "id=templateClose"
HomepageUserTab = "id=radio_tab_user"

# Account Page
## Non Login User
SignInSection = "xpath=//com.lynx.tasm.behavior.ui.LynxFlattenUI[@content-desc='Tap to sign in']"

## Log In User 
ViewProfileSection = "xpath=//com.lynx.tasm.behavior.ui.text.FlattenUIText[@content-desc='View profile']"

# Login Page
GoogleAccountPopup = "xpath=//*[contains(@text, 'Choose an account')]"
LoginToTiktokButton = "xpath=//android.widget.TextView[@text='Log in to TikTok']"
LoginWithGoogleButton = "xpath=//android.widget.TextView[@text='Sign in with Google']"
LoginWithEmailButton = "xpath=//android.widget.TextView[@text='Sign in with email']"
LoginWithFacebookButton = "xpath=//android.widget.TextView[@text='Sign in with Facebook']"

## Login With Email Page
EmailField = "id=emailEt"
PasswordField = "id=pwdEt"
LoginButton = "id=loginBtn"

## Login With Email Page - Email Not Found popup
EmailNotFoundPopupTitle = "xpath=//android.widget.TextView[contains(@text, 'Sign up with this email?')]"

## Error Login
EmailInvalidError = "xpath=//android.widget.TextView[@text='Enter the correct email']"
PasswordInvalidError = "xpath=//android.widget.TextView[@text='Incorrect email or password']"
