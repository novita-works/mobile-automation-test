*** Settings ***
Resource                                  ../pageobjects/homeScreen/homeScreen.robot
Resource                                  ../pageobjects/signinScreen/signinScreen.robot
Resource                                  ../pageobjects/bookScreen/bookScreen.robot
Resource                                  ../pageobjects/base.robot
Test Setup                                Run Keywords        Open Flight Application    AND    Verify Home Screen Appears    AND    Sign In  
Test Teardown                             Close Flight Application   

# *** Variables ***


# *** Keywords ***
      

*** Test Cases ***
User Should Be Able to Book Flight With Valid Step
    Click Book Button on Home Screen (Signed-In)
    Verify Book Flight Screen Appears
    Select The Book Filght Type
    Select The Origin City
    Select The Destination City
    Select The Flight Class
    Select The Start Date
    Select The End Date
    Select The Book Flight Option
    Click Book Botton on Book Screen
    Verify User Already Select The Book Flight
    Select The Price to Confirm User Booking
    Click Confirm Button to Continue The Booking Flight
    Verify User Successfully Finsih The Book Flight

