*** Settings ***
Library                      AppiumLibrary   
Resource                     ../pageobjects/signinScreen/signinScreen.robot


*** Variables ***
${REMOTE_URL}                http://127.0.0.1:4723
${PLATFORM_NAME}             Android
${PLATFORM_VERSION}          13.0
${DEVICE_NAME}               emulator-5554
${APP_PACKAGE}               com.example.myapplication
${APP_ACTIVITY}              com.example.myapplication.MainActivity
${AUTOMATION_NAME}           uiautomator2

*** Keywords ***
Open Flight Application
    Open Application         remote_url=${REMOTE_URL}    
    ...                      platformName=${PLATFORM_NAME}   
    ...                      platformVersion=${PLATFORM_VERSION}    
    ...                      deviceName=${DEVICE_NAME}    
    ...                      appPackage=${APP_PACKAGE}    
    ...                      appActivity=${APP_ACTIVITY}    
    ...                      automationName=${AUTOMATION_NAME}

Sign In
    Click Sign In Button on Home Screen
    Verify Sign In Screen Appears
    Input Valid Username
    Input Valid Password Sign In   
    Click Sign In Button on Sign In Screen 
    Verify User Successfully Sign In    

Close Flight Application
    Close Application    