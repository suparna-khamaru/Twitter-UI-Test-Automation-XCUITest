//
//  TweetElements.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class TweeetElements {
    
    let composeTweet: XCUIElement
    let galleryIcon: XCUIElement
    let selectImage: XCUIElement
    let addImage: XCUIElement
    let postTweetButton: XCUIElement
    let latestTab: XCUIElement
    let closeButton: XCUIElement

    let composeTweetId = AccessibilityIdentifier.Tweet.composeTweetButton
    let galleryIconId = AccessibilityIdentifier.Tweet.galleryIcon
    let firstImageCellId = AccessibilityIdentifier.Tweet.firstImageCell
    let imageToBePostedId = AccessibilityIdentifier.Tweet.imageToBePosted
    let navBarId = AccessibilityIdentifier.Navigation.navBar
    let addButtonId = AccessibilityIdentifier.Tweet.addButton
    let postTweetButtonId = AccessibilityIdentifier.Tweet.postTweetButton
    let latestTabId = AccessibilityIdentifier.Search.latestTab
    let closeButtonId = AccessibilityIdentifier.closeButton
    
    required init(_ twitterApp: XCUIApplication) {
        composeTweet = twitterApp.buttons[composeTweetId].firstMatch
        galleryIcon = twitterApp.buttons[galleryIconId].firstMatch
    
        selectImage = twitterApp
            .collectionViews
            .cells[firstImageCellId]
            .otherElements[imageToBePostedId]
            .firstMatch
        
        addImage = twitterApp
            .navigationBars[navBarId]
            .buttons[addButtonId]
            .firstMatch
        
        postTweetButton = twitterApp
            .navigationBars[navBarId]
            .buttons[postTweetButtonId]
            .firstMatch
        
        latestTab = twitterApp
            .collectionViews
            .buttons[latestTabId]
            .firstMatch
        
        closeButton = twitterApp
            .buttons[closeButtonId]
            .firstMatch
    }
}

