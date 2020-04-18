//
//  SignUp.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class SignUp: XCTestCase {
    
    func initiate_SignUp_Journey() {
        twitterApp.buttons["Create account"].tap()
    }
    
    func enter_New_SignUp_Credentials() {
        twitterApp.typeText("suparna")
        twitterApp.buttons["Return"].tap()
        twitterApp.typeText("9113995653")
    }
    
    func complete_signup_journey() {   //////////////////RAW test script - Not Refactored Yet
        let app = twitterApp
        let toolbar = app.toolbars["Toolbar"]
        let nextButton = toolbar.buttons["Next"]
        nextButton.tap()
        nextButton.tap()
        app.collectionViews["CombinedSignUpReview Table"].buttons["Sign up"].tap()
        app.alerts["Verify phone"].scrollViews.otherElements.buttons["OK"].tap()
        //otp - BLOCKER 
        nextButton.tap()
        //enter password
        nextButton.tap()
        nextButton.tap()
        let skipForNowButton = toolbar.buttons["Skip for now"]
        skipForNowButton.tap()
        skipForNowButton.tap()
        //Not now
        //Choose English
        nextButton.tap()
        nextButton.tap()
        nextButton.tap()
        skipForNowButton.tap()
        nextButton.tap()
        //Not now
    }
}
