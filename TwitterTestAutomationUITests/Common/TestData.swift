//
//  TestData.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import Foundation

public enum TestData {
    
    static let twitter = "Twitter"
    static let twitterIndia = "Twitter India"
    static let hashtagTwitterIndia = "#TwitterIndia"
    static let twitterTagline = "ट्विटर - The official Twitter India account."
    static let followingMessage = "Following Twitter India"
    
    enum Authentication {
        enum Login {
            static let username = "<enter a valid username>"
            static let password = "<enter a valid password>"
        }
    }
    
    enum Tweet {
        static let tweetMessage = "Tweet India Tweet & end corona @TwitterIndia #TwitterIndia "
        static let tweetedContent = "suparna. Tweet India Tweet & end corona @TwitterIndia  hash tag TwitterIndia. Image. "
    }
}
