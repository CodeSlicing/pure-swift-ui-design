//
//  FloatingPoint+Tests.swift
//
//
//  Created by Adam Fordyce on 27/11/2019.
//

import XCTest
@testable import PureSwiftUIDesign

class FloatingPointConvenienceExtensionsTests: XCTestCase {
    
    func testIsPositive() {

        XCTAssertTrue(1.0.isPositive)
        XCTAssertFalse((-1.0).isPositive)
    }
    
    func testIsNegative() {

        XCTAssertFalse(1.0.isNegative)
        XCTAssertTrue((-1.0).isNegative)
    }
    
    func testClampPositive() {
        XCTAssertEqual((-1.0).clampedPositive, 0.0)
        XCTAssertEqual(1.0.clampedPositive, 1.0)
    }
    
    func testClampNegative() {
        XCTAssertEqual(1.0.clampedNegative, 0.0)
        XCTAssertEqual((-1.0).clampedNegative, -1.0)
    }
}
