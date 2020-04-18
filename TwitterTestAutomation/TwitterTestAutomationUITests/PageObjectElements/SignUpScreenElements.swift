//
//  SignUpScreenElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class SignUpScreenElements {
    
    let searchIcon: XCUIElement
    let searchIconId = AccessibilityIdentifier.TabNavBar.search
    
    required init(_ twitterApp: XCUIApplication) {
        searchIcon = twitterApp
            .otherElements[searchIconId]
            .firstMatch
    }
    
}
