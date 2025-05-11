# 🤖 Robot Framework Mobile UI Automation
This repository contains Android automated tests built using [Robot Framework](https://robotframework.org/) and [Appium](https://appium.io/).

---
## Project Structure

```bash
├── keywords                    # Shared Keywords
│   ├── account_page.robot
│   ├── common_keywords.robot
│   ├── home_page.robot
│   └── login_page.robot
├── resources                   # Shared Locators and Test Data (Python Files)
│   ├── locators.py
│   └── test_data.py
├── tests                       # Robot Framework testcases
│   └── login_tests.robot       
├── config.robot                # Configuration for Robot Framework and AppiumLibrary
└── README.md                   # Project documentation
```

## Getting Started

### 1. Install Dependencies

Makesure Python 3.x is installed (my case, I'm using Phyton 3.9), then run:

```bash
/opt/homebrew/bin/python3.9 -m pip install robotframework                   # Using homebrew to install Robot Framework
/opt/homebrew/bin/python3.9 -m pip install robotframework-appiumlibrary     # Using homebrew to install Robot Framework - AppiumLibrary
```

### 2. Start Appium Server

Make sure the Appium server is running before executing any tests.

```bash
appium
```

### 3. Connect Device or Start Emulator

Ensure your Android device is connected:

```bash
adb devices
```

### 4. Run Tests

To execute all test cases:

```bash
robot -d results tests/
```

You can also run a specific test file:

```bash
robot -d results tests/login_tests.robot
```

---

## Tools Used

- Robot Framework
- Appium (for mobile automation)
- Python 3.x
- Android Studio ADB / Emulator
- Appium-Python-Client

---

## Notes

- Ensure Appium and the device/emulator are properly set up before running tests.
- Update locator definitions in `resources/locators.py` as needed for your app.
- Update test data in `resources/test_data.py` as needed for your app.
- Test results (HTML & logs) will be saved in the `results/` directory.

