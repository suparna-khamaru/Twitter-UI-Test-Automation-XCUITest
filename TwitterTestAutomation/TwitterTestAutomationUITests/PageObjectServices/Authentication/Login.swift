//
//  Authentication.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class Login: XCTestCase {
    
    var login = LoginScreenElements(twitterApp)
    var home = HomeScreenElements(twitterApp)
    
    func go_To_LoginScreen_From_LandingScreen() -> Login {
        XCTAssertTrue(login
            .loginLink
            .waitForExistence(timeout: 3000))
        
        login.loginLink.tap()
        return self
    }
    
    func enter_registered_Login_Credentials(_ username: String,
                                            _ password: String) -> Login {
    
        login.usernameField.typeText(username)
        login.passwordField.tap()
        login.passwordField.typeText(password)
        return self
    }
    
    func tap_On_Sign_In_Button() -> Login {
        XCTAssertTrue(login
            .signInButton
            .waitForExistence(timeout: 2000) && login.signInButton.isHittable)
        login.signInButton.tap()
        return self
    }
    
    func verify_User_Is_Signed_In() {
        XCTAssertTrue(home.homeIcon.waitForExistence(timeout: 3000) &&
            home.searchIcon.exists, "Failed to Login Successfully")
    }
}

