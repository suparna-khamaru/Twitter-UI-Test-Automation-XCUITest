//
//  SearchScreenElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class SearchScreenElements {
    
    let searchIcon: XCUIElement
    let searchField: XCUIElement
    let searchButton: XCUIElement
    
    let searchIconId = AccessibilityIdentifier.TabNavBar.search
    let navbar = AccessibilityIdentifier.Navigation.navBar
    let searchFieldId = AccessibilityIdentifier.Search.searchField
    let searchButtonId = AccessibilityIdentifier.Search.searchButton
    
    required init(_ twitterApp: XCUIApplication) {
        searchIcon = twitterApp
            .otherElements[searchIconId]
            .firstMatch
        
        searchField = twitterApp
            .navigationBars[navbar]
            .searchFields[searchFieldId]
            .firstMatch
        
        searchButton = twitterApp
            .buttons[searchButtonId]
            .firstMatch
    }
}
