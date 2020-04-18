//
//  TwitterUserJourney.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

class TwitterUserJourney: XCTestCase {
    
    let username = TestData.Authentication.Login.username
    let password = TestData.Authentication.Login.password
    
    override func setUp() {
        continueAfterFailure = false
        super.setUp()
    }
    
    func test1_Download_Install_Open_TwitterApp_From_AppStore() {
        appStore.launch()
        
        AppInstall()
            .open_AppStore_And_Search_Twitter_App()
            .download_Install_And_Open_Twitter_App_From_AppStore()
    }
    
    func test2_Login_To_Registered_Account() {        
        Login()
            .go_To_LoginScreen_From_LandingScreen()
            .enter_registered_Login_Credentials(username, password)
            .tap_On_Sign_In_Button()
            .verify_User_Is_Signed_In()
    }
    
    func test3_Search_And_Follow_Twitter_India() {
        Search()
            .tap_On_Search_Icon_In_Tab_Bar()
            .search_In_Search_Bar(text: TestData.twitterIndia)
        
        Follow()
            .go_To_People_Tab_In_Search_Results()
            .follow_Twitter_India_Page()
            .verify_Twitter_India_Page_Is_Followed()
    }
    
    func test4_Post_New_Tweet_With_Image_And_Text_Message() {
        Tweet()
            .tapOnHomeIcon()
            .InitiateTweetingMessage()
            .addAnImage()
            .postTweetAndWaitTillPosted()
    }
    
    func test5_Verify_Posted_Tweet_Image_And_Text_In_Twitter_India_Page() {
        Tweet()
            .search_Tweeted_Post_In_Twitter_India_Page()
            .verify_Tweeted_Image_Is_Posted_In_Twitter_India_Page()
            .verify_Tweeted_TextMessage_Is_Posted_In_Twitter_India_Page()
    }
    
    func test6_signUp() {
        SignUp().initiate_SignUp_Journey()
        SignUp().enter_New_SignUp_Credentials()
        SignUp().complete_signup_journey()
    }
    
    override func tearDown() {
        super.tearDown()
        //twitter page unfollow
        //twitter log out
        //delete tweeted post
        //twitter uninstall app
        
        //appstore.terminate()
    }
}
