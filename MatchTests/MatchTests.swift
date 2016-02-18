//
//  MatchTests.swift
//  MatchTests
//
//  Created by Christian Otkjær on 18/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Match

class MatchTests: XCTestCase
{
    func test_default_String_Int()
    {
        let string = "123"
        
        let negative = -123
        let positive = 123
        
        XCTAssert(string ~~ positive)
        
        XCTAssertFalse(string !~ positive)
        
        XCTAssertFalse(string ~~ negative)
        XCTAssertFalse(string ~~ 0)
        
        XCTAssertFalse("" ~~ negative)
        
        XCTAssertFalse(string ~~ negative)
        XCTAssertFalse(string ~~ 0)
        
        XCTAssertFalse("" ~~ negative)
    }

    func test_default_equatable()
    {
        XCTAssert(3 ~~ 3)
        XCTAssertFalse(0 ~~ 23)
        XCTAssertFalse(-1 ~~ -2)
        
        XCTAssert("true" ~~ "true")
    }
}
