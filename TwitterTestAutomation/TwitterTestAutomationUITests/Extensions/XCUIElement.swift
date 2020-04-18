//
//  XCUIElement.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    func swipeUp(to element: XCUIElement) {
        while !element.exists {
            swipeUp()
        }
    }
    
    func swipeDown(to element: XCUIElement) {
        while !element.exists {
            swipeDown()
        }
    }
}
