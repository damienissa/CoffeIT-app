//
//  DataSource.swift
//  CoffeIT-app
//
//  Created by Dmytro Virych on 2021-12-16.
//

import Foundation

final class RemoteRepository: IRemoteRepository {
    private let api: INetworking
    init(_ api: INetworking) {
        self.api = api
    }
    
    func loadConfiguration() async throws -> CoffeeMachine {
        let data = try await api.loadCoffeeMachineSetup()
        
       return try JSONDecoder().decode(CoffeeMachine.self, from: data)
    }
}
