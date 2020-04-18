//
//  HomeScreenElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class HomeScreenElements {
    
    let homeIcon: XCUIElement
    let searchIcon: XCUIElement
    let backButton: XCUIElement
    
    let homeId = AccessibilityIdentifier.TabNavBar.home
    let searchId = AccessibilityIdentifier.TabNavBar.search
    let backId = AccessibilityIdentifier.Navigation.backButton
    let navBarId = AccessibilityIdentifier.Navigation.navBar
    
    required init(_ twitterApp: XCUIApplication) {
        homeIcon = twitterApp
            .otherElements[homeId]
            .firstMatch
        
        searchIcon = twitterApp
            .otherElements[searchId]
            .firstMatch
        
        backButton = twitterApp
            .navigationBars[navBarId]
            .buttons[backId]
            .firstMatch
    }
}
