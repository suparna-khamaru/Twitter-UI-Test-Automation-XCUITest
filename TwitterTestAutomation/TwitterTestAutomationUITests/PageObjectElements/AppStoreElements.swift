//
//  AppStoreElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class AppStoreElements {
    
    let searchIcon: XCUIElement
    let searchFieldText: XCUIElement
    let searchIconInNavBar: XCUIElement
    let searchButton: XCUIElement
    let twitterInAppStore: XCUIElement
    let openTwitterInAppStore: XCUIElement
    let getButton: XCUIElement
    let downloadButton: XCUIElement

    let twitterInAppStoreId = AccessibilityIdentifier.AppStore.twitterApp
    let searchIconId = AccessibilityIdentifier.AppStore.searchIconInTabBar
    let searchButtonId = AccessibilityIdentifier.AppStore.searchButton
    let searchFieldTextId = AccessibilityIdentifier.AppStore.searchField
    let getButtonId = AccessibilityIdentifier.AppStore.get
    let openButton = AccessibilityIdentifier.AppStore.open
    let downloadButtonId = AccessibilityIdentifier.AppStore.download
    var install = AccessibilityIdentifier.AppStore.install
    
    required init(_ twitterApp: XCUIApplication) {
        searchIcon = appStore
            .tabBars
            .buttons[searchIconId]
            .firstMatch
        
        searchFieldText = appStore
            .navigationBars[searchIconId]
            .searchFields[searchFieldTextId]
            .firstMatch
        
        searchIconInNavBar = appStore
            .navigationBars[searchIconId]
            .firstMatch
        
        searchButton = appStore
            .buttons[searchButtonId]
            .firstMatch
        
        twitterInAppStore = appStore
            .collectionViews
            .cells[twitterInAppStoreId]
            .firstMatch
        
        openTwitterInAppStore = twitterInAppStore
            .buttons[openButton]
            .firstMatch
        
        getButton = twitterInAppStore
            .buttons[getButtonId]
            .firstMatch
        
        downloadButton = twitterInAppStore
            .buttons[downloadButtonId]
            .firstMatch
        
        install = AccessibilityIdentifier.AppStore.install
    }
}

