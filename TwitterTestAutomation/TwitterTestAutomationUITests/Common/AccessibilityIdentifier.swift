//
//  AccessibilityIdentifier.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import Foundation

public enum AccessibilityIdentifier {
    
    static let follow = "FollowButton"
    static let closeButton = "CloseButton"
    
    enum Authentication {
        enum Login {
            static let loginLink = "Have an account already? Log in"
            static let usernameFieldText = "Phone, email or username"
            static let passwordFieldText = "Password"
            
            static let toolBar = "Toolbar"
            static let loginButton = "LogIn Action"
        }
    }
    
    enum Search {
        static let searchField = "SearchTextField"
        static let searchButton = "Search"
        
        static let latestTab = "Latest"
        static let peopleTab = "People"
        static let table = "URT Table"
        static let loading = "Loading…"
        static let profileBio = "ProfileHeaderBio"
    }
    
    enum Navigation {
        static let backButton = "Back"
        static let navBar = "kTFNNavigationBarAXIdentifier"
    }
    
    enum TabNavBar {
        static let home = "Timelines_tab"
        static let search = "Moments_tab"
    }
    
    enum AppStore {
        static let twitterApp = "Twitter, Live news, sports, and chat, four and a half stars, 425K ratings"
        static let searchIconInTabBar = "Search"
        static let searchField = "Games, Apps, Stories and More"
        static let searchButton = "search"
        
        static let get = "get"
        static let install = "Install"
        static let download = "re-download"
        static let open = "open"
    }
    
    enum Tweet {
        static let composeTweetButton = "Compose Tweet"
        static let galleryIcon = "PhotoGalleryButton"
        static let firstImageCell = "PhotoGalleryCell1"
        static let imageToBePosted = "Portrait. Photo"
        static let addButton = "Add"
        static let postTweetButton = "ComposeSendTweetButton"
    }
}
