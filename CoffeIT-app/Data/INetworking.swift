//
//  INetworking.swift
//  CoffeIT-app
//
//  Created by Dmytro Virych on 2021-12-16.
//

import Foundation

protocol INetworking {
    func loadCoffeeMachineSetup() async throws -> Data
}
