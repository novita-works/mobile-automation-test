*** Settings ***
Library                                  AppiumLibrary    
Variables                                book-screen-locators.yaml

*** Variables ***
${VALID_START_DATE}                      //android.view.View[@content-desc="08 August 2019"]
${VALID_END_DATE}                        //android.view.View[@content-desc="10 August 2019"]
${VALID_PRICE}                           //android.widget.Button[@resource-id="com.example.myapplication:id/price4"]

*** Keywords ***
Click Book Button on Home Screen (Signed-In)
    Click Element                       locator=${BOOK_BTN_HOMESCREEN}
Verify Book Flight Screen Appears    
    Wait Until Element Is Visible       locator=${BOOK_ONE_WAY}
    Wait Until Element Is Visible       locator=${BOOK_ROUND_TRIP}
    Wait Until Element Is Visible       locator=${FROM_CITY_TITLE}
    Wait Until Element Is Visible       locator=${TO_CITY_TITLE}
    Wait Until Element Is Visible       locator=${CLASS_TITLE}
    Wait Until Element Is Visible       locator=${START_DATE}
    Wait Until Element Is Visible       locator=${BOOK_FLIGHT_ONLY}
    Wait Until Element Is Visible       locator=${BOOK_FLIGHT_ONLY}
    Wait Until Element Is Visible       locator=${ADD_DAY_BTN}
Select The Book Filght Type
    Click Element                       locator=${BOOK_ONE_WAY}    
Select The Origin City
    Click Element                       locator=${FROM_CITY_DROPDOWN}    
    Click Element                       locator=${FROM_CHICAGO}       
Select The Destination City
    Click Element                       locator=${TO_CITY_DROPDOWN}    
    Click Element                       locator=${TO_PARIS}       
Select The Flight Class
    Click Element                       locator=${FLIGHT_CLASS_DROPDOWN}    
    Click Element                       locator=${CLASS_BUSINESS}  
Select The Start Date
    Click Element                       locator=${START_DATE}  
    Click Element                       locator=${VALID_START_DATE}
    Click Element                       locator=${CONFIRM_DATE_BTN}
Select The End Date
    Click Element                       locator=${END_DATE}  
    Click Element                       locator=${VALID_END_DATE}
    Click Element                       locator=${CONFIRM_DATE_BTN}
Select The Book Flight Option
    Click Element                       locator=${BOOK_FLIGHT_ONLY}
Click Book Botton on Book Screen    
    Click Element                       locator=${BOOK_BTN_BOOKSCREEN}
Verify User Already Select The Book Flight
    Wait Until Page Contains Element    locator=${CONFIRM_DIRECTIONS}
    Element Name Should Be              locator=${CONFIRM_DIRECTIONS}        
    ...                                 expected=Click on the price to confirm your booking
Select The Price to Confirm User Booking    
    Click Element                       locator=${VALID_PRICE}
Click Confirm Button to Continue The Booking Flight
    Click Element                       locator=${CONFIRM_ORDER_BTN}
Verify User Successfully Finsih The Book Flight    
    Wait Until Page Contains Element    locator=${SUCCES_MESSAGE}
    Element Should Contain Text         locator=${SUCCES_MESSAGE}        
    ...                                 expected=Your flight is booked. Reservation number is CADX2214    
    ...                                 message=Text not found as expected.