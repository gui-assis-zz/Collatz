//
//  CollatzTest.swift
//  DojOLX
//
//  Created by Guilherme Assis on 12/02/17.
//  Copyright © 2017 Guilherme Assis. All rights reserved.
//

import XCTest

class CollatzTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceTo1000() {
        // The performance should be less than 1.130 sec
        self.measure {
            Collatz.sequence(to: 1000)
        }
    }
}
