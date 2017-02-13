//
//  DojOLXTests.swift
//  DojOLXTests
//
//  Created by Guilherme Assis on 12/02/17.
//  Copyright © 2017 Guilherme Assis. All rights reserved.
//

import XCTest
@testable import DojOLX

class DojOLXTests: XCTestCase {
    
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
    
    func testCollatzResultWith1() {
        XCTAssertEqual(Collatz.collatz(n: 1), [1])
    }
    
    func testCollatzResultWith2() {
        XCTAssertEqual(Collatz.collatz(n: 2), [2, 1])
    }
    
    func testCollatzResultWith3() {
        XCTAssertEqual(Collatz.collatz(n: 3), [3, 10, 5, 16, 8, 4, 2, 1])
    }
    
    func testCollatzResultWith4() {
        XCTAssertEqual(Collatz.collatz(n: 4), [4, 2, 1])
    }
    
    func testSequenceResultWith1() {
        let number = 1
        let seq = 1
        let countMaxSequence = 1
        
        XCTAssertEqual(Collatz.sequence(number: number), "O número com a maior sequência entre 1 e \(number) é \(seq) e a maior sequência tem \(countMaxSequence) números")
        
    }
    
    func testSequenceResultWith2() {
        let number = 2
        let seq = 2
        let countMaxSequence = 2
        
        XCTAssertEqual(Collatz.sequence(number: number), "O número com a maior sequência entre 1 e \(number) é \(seq) e a maior sequência tem \(countMaxSequence) números")
    }
    
    func testSequenceResultWith4() {
        let number = 4
        let seq = 3
        let countMaxSequence = 8
        
        XCTAssertEqual(Collatz.sequence(number: number), "O número com a maior sequência entre 1 e \(number) é \(seq) e a maior sequência tem \(countMaxSequence) números")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
