//
//  Tweet.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class Tweet: XCTestCase {
    
    var search = SearchScreenElements(twitterApp)
    var home = HomeScreenElements(twitterApp)
    var tweet = TweeetElements(twitterApp)
    
    let tweetedContentMatches = TestData.Tweet.tweetedContent
    
    func tapOnHomeIcon() -> Tweet {
        home.homeIcon.tap()
        return self
    }
    
    func InitiateTweetingMessage() -> Tweet {
        tweet.composeTweet.tap()
        twitterApp.typeText(TestData.Tweet.tweetMessage)
        return self
    }
    
    func addAnImage() -> Tweet {
        XCTAssertTrue(tweet
            .galleryIcon
            .waitForExistence(timeout: 1000))
        
        tweet.galleryIcon.tap()
        tweet.selectImage.tap()
        tweet.addImage.tap()
        return self
    }
    
    func postTweetAndWaitTillPosted() {
        tweet.postTweetButton.tap()
        sleep(2)
    
        let newPost = twitterApp
            .cells
            .containing(NSPredicate(format: "label CONTAINS %@", tweetedContentMatches))
            .element
        
        XCTAssertTrue(newPost.waitForExistence(timeout: 20000))
    }
    
    func search_Tweeted_Post_In_Twitter_India_Page() -> Tweet {
        home.searchIcon.tap()
            
        search.searchField.tap()
        twitterApp.typeText(TestData.hashtagTwitterIndia)
        search.searchButton.tap()
    
        go_To_Latest_Tab_In_Search_Results()
        
        return self
    }
    
    func go_To_Latest_Tab_In_Search_Results() {
        XCTAssertTrue(tweet.latestTab.waitForExistence(timeout: 3000))
        tweet.latestTab.tap()
    }
    
    func verify_Tweeted_Image_Is_Posted_In_Twitter_India_Page() -> Tweet {
        twitterApp
            .scrollViews
            .tables.cells
            .containing(NSPredicate(format: "label CONTAINS %@", tweetedContentMatches))
            .element.firstMatch.tap()
        
        XCTAssertTrue(twitterApp
            .otherElements
            .containing(NSPredicate(format: "identifier ENDSWITH %@", ".jpg"))
            .element
            .waitForExistence(timeout: 2000))
        
        tweet.closeButton.tap()
        return self
    }
    
    func verify_Tweeted_TextMessage_Is_Posted_In_Twitter_India_Page() {
        let tweetPosted = twitterApp
            .scrollViews
            .tables.cells
            .containing(NSPredicate(format: "label CONTAINS %@", tweetedContentMatches))
            .element.firstMatch
        
        XCTAssertTrue(tweetPosted.exists, "Tweeted Image and post is not displayed")
    }
}
