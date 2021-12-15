//
//  DITestCase.swift
//  CoffeIT-appTests
//
//  Created by Dmitry Virych on 15.12.2021.
//

import XCTest
@testable import CoffeIT_app

class DITestCase: XCTestCase {
    
    func testSuccessRegistration() throws {
        let sut = makeSUT()
        let object = "object"
        try sut.register(object)
        let result: String? = sut.resolve()
        XCTAssertEqual(object, result)
    }
    
    func testFailureTwiceRegistration() throws {
        let sut = makeSUT()
        let object = "object"
        try sut.register(object)
        
        XCTAssertThrowsError(try sut.register(object))
    }
    
    
    func makeSUT() -> DependenciesInjection {
        DependenciesInjection()
    }
}
