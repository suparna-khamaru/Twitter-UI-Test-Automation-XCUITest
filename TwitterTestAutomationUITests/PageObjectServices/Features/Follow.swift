//
//  Follow.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class Follow: XCTestCase {
    
    let home = HomeScreenElements(twitterApp)
    let follow = FollowElements(twitterApp)
    
    let loading = AccessibilityIdentifier.Search.loading
    
    func go_To_People_Tab_In_Search_Results() -> Follow {
        XCTAssertTrue(follow
            .peopleTab
            .waitForExistence(timeout: 3000))
        
        follow.peopleTab.tap()
        return self
    }
    
    func follow_Twitter_India_Page() -> Follow {
        if (follow.firstCell.label == loading) {
            XCTAssertTrue(follow.firstCell.waitForExistence(timeout: 30000))
        }
        
        XCTAssertTrue(follow.followButton.waitForExistence(timeout: 30000))
        follow.followButton.tap()
        return self
    }
    
    func verify_Twitter_India_Page_Is_Followed() {
        follow.firstCell.tap()
        let isFollowing = follow.followingButton.label ///Following Twitter India
        
        XCTAssertTrue(follow
            .profileBio
            .label
            .contains(TestData.twitterTagline))
        
        XCTAssertEqual(TestData.followingMessage, isFollowing, "Test failed to follow Twitter")
        
        home.backButton.tap() 
    }
}
