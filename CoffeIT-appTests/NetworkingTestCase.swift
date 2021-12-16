//
//  NetworkingTestCase.swift
//  CoffeIT-appTests
//
//  Created by Dmitry Virych on 15.12.2021.
//

import XCTest
@testable import CoffeIT_app

class NetworkingTestCase: XCTestCase {
    
    func testLoadingData() async throws {

        let sut = makeSUT()
        
        XCTAssertNoThrow(Task {
            try await sut.loadCoffeeMachineSetup()
        })
    }
    
    func makeSUT() -> Networking {
        Networking()
    }
}

