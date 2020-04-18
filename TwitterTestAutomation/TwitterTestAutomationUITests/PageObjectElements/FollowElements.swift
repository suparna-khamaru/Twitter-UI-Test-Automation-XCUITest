//
//  FollowElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class FollowElements {
    
    let peopleTab: XCUIElement
    let firstCell: XCUIElement
    let followButton: XCUIElement
    let followingButton: XCUIElement
    let profileBio: XCUIElement
    
    let peopleTabId = AccessibilityIdentifier.Search.peopleTab
    let latestTabId = AccessibilityIdentifier.Search.latestTab
    let followButtonId = AccessibilityIdentifier.follow
    let tableId = AccessibilityIdentifier.Search.table
    let profileBioId = AccessibilityIdentifier.Search.profileBio
    
    required init(_ twitterApp: XCUIApplication) {
        peopleTab = twitterApp
            .buttons[peopleTabId]
            .firstMatch
        
        firstCell = twitterApp
            .tables[tableId]
            .cells
            .firstMatch
        
        followButton = twitterApp
            .tables[tableId]
            .cells
            .buttons[followButtonId]
            .firstMatch
        
        followingButton = twitterApp
            .buttons[followButtonId]
            .firstMatch
        
        profileBio = twitterApp
            .staticTexts[profileBioId]
            .firstMatch
    }
}

