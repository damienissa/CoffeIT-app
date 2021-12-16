//
//  IRemoteRepository.swift
//  CoffeIT-app
//
//  Created by Dmytro Virych on 2021-12-16.
//

import Foundation

protocol IRemoteRepository {
    func loadConfiguration() async throws -> CoffeeMachine
}
