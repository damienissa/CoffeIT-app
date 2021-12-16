//
//  DataSourceTestCase.swift
//  CoffeIT-appTests
//
//  Created by Dmytro Virych on 2021-12-16.
//

import XCTest
@testable import CoffeIT_app

class DataSourceTestCase: XCTestCase {

    func testExample() async throws {
        let sut = makeSUT()
        let machine = try await sut.loadConfiguration()
        XCTAssertEqual(machine.id, "60ba1ab72e35f2d9c786c610")
    }
    
    func makeSUT() -> RemoteRepository {
        RemoteRepository(MockNetworking())
    }
}


class MockNetworking: INetworking {
    func loadCoffeeMachineSetup() async throws -> Data {
        coffeMachineStub.data(using: .utf8)!
    }
}
