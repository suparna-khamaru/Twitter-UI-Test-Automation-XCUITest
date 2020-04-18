//
//  Search.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

final class Search: XCTestCase {
    
    var search = SearchScreenElements(twitterApp)
    
    func tap_On_Search_Icon_In_Tab_Bar() -> Search {
        search.searchIcon.tap()
        return self
    }
    
    func search_In_Search_Bar(text: String) {
        search.searchField.tap()
        twitterApp.typeText(text)
        search.searchButton.tap()
    }
}
