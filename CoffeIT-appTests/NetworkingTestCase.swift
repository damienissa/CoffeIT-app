//
//  NetworkingTestCase.swift
//  CoffeIT-appTests
//
//  Created by Dmitry Virych on 15.12.2021.
//

import XCTest
@testable import CoffeIT_app

class NetworkingTestCase: XCTestCase {

    func testLoadingData() throws {
        
        let sut = makeSUT()
        Task {
            XCTAssertNoThrow(try await sut.loadCoffeeMachineSetup())
        }
        
    }
    
    func makeSUT() -> Networking {
        Networking()
    }
}
