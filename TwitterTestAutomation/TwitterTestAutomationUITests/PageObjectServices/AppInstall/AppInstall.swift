//
//  AppInstallation.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class AppInstall: XCTestCase {
    
    var appstore = AppStoreElements(twitterApp)
    
    let twitter = TestData.twitter
    
    func open_AppStore_And_Search_Twitter_App() -> AppInstall {
        appstore.searchIcon.tap()
        appstore.searchFieldText.tap()
        appstore.searchIconInNavBar.typeText(twitter)
        appstore.searchButton.tap()
        
        XCTAssert(appstore
            .twitterInAppStore
            .waitForExistence(timeout: 3000),
                  "Twitter app is not displayed in app store post search")
        return self
    }
    
    func download_Install_And_Open_Twitter_App_From_AppStore() {
        if(appstore.getButton.exists) {
            appstore.getButton.tap()
            XCTAssertTrue(springBoard.buttons[appstore.install].waitForExistence(timeout: 3000))
            springBoard.buttons[appstore.install].tap()
            XCTAssertTrue(appstore.openTwitterInAppStore.waitForExistence(timeout: 30000))
            open_Twitter_App()
        }
        else if(appstore.downloadButton.exists) {
            appstore.downloadButton.tap()
            XCTAssertTrue(appstore.openTwitterInAppStore.waitForExistence(timeout: 30000))
            open_Twitter_App()
        }
        else {
            open_Twitter_App()
        }
    }
    
    func open_Twitter_App() {
        appstore.openTwitterInAppStore.tap()
    }
}
