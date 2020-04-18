//
//  XCTestCase.swift
//  TwitterTestAutomationUITests
//
//  Created by Khamaru, Suparna on 12/04/20.
//  Copyright © 2020 suparna. All rights reserved.
//

import XCTest

extension XCTestCase {
    func waitForCells(in collectionView: XCUIElement) {
        let moreThanZero = NSPredicate(format: "count > 0")
        let cells = collectionView.cells
        
        expectation(for: moreThanZero, evaluatedWith: cells, handler: nil)
        waitForExpectations(timeout: 30)
    }
    
    func waitForExistence(of element: XCUIElement) {
        let exists = NSPredicate(format: "exists == TRUE")
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 30)
    }
}
