//
//  LoginScreenElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class LoginScreenElements {

    let loginLink: XCUIElement
    let usernameField: XCUIElement
    let passwordField: XCUIElement
    let signInButton: XCUIElement
    
    let loginLinkId = AccessibilityIdentifier.Authentication.Login.loginLink
    let usernameFieldText = AccessibilityIdentifier.Authentication.Login.usernameFieldText
    let passwordFieldText = AccessibilityIdentifier.Authentication.Login.passwordFieldText
    let toolbar = AccessibilityIdentifier.Authentication.Login.toolBar
    let loginButtonId = AccessibilityIdentifier.Authentication.Login.loginButton
    let searchIcon = AccessibilityIdentifier.TabNavBar.search
    
    required init(_ twitterApp: XCUIApplication) {
        loginLink = twitterApp
            .otherElements[loginLinkId]
            .firstMatch
        
        usernameField = twitterApp
            .collectionViews
            .textFields[usernameFieldText]
            .firstMatch
        
        passwordField = twitterApp
            .collectionViews.cells
            .secureTextFields[passwordFieldText]
            .firstMatch
        
        signInButton = twitterApp
            .toolbars[toolbar]
            .buttons[loginButtonId]
            .firstMatch
    }
}
