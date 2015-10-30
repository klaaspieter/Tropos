//
//  TroposUITests.swift
//  TroposUITests
//
//  Created by Klaas Pieter Annema on 10/30/15.
//  Copyright © 2015 thoughtbot. All rights reserved.
//

import XCTest
import Foundation

class TroposUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        //        XCUIApplication().alerts["Enter zip code"].collectionViews.textFields["Zip code"].typeText("11101")


        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCUIApplication().navigationBars.buttons["Add"].tap()

        let alert = XCUIApplication().alerts["Enter zip code"]
        alert.collectionViews.textFields["Zip code"].typeText("11101")
        alert.collectionViews.buttons["Submit"].tap()

        NSRunLoop.currentRunLoop().runUntilDate(NSDate(timeIntervalSinceNow: 5))
        XCTAssertTrue(XCUIApplication().staticTexts["New York, NY"].exists)
    }
    
}
