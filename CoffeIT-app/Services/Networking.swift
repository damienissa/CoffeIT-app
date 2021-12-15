//
//  Networking.swift
//  CoffeIT-app
//
//  Created by Dmitry Virych on 15.12.2021.
//

import Foundation

enum APIError: Error {
    case invalidRequest, machineNotFound
}

final class APIConstants {
    static let baseURL = "https://darkroastedbeans.coffeeit.nl/"
    static let defaultMachine = "60ba1ab72e35f2d9c786c610"
    static func getCoffeePath(id: String) -> String {
        baseURL + "/coffee-machine/\(id)"
    }
}

final class Networking {
    
    func loadCoffeeMachineSetup() async throws -> String {
        let (data, response) = try await URLSession.shared.data(from: URL(string: APIConstants.getCoffeePath(id: APIConstants.defaultMachine))!)
        
        switch ((response as? HTTPURLResponse)?.statusCode ?? 400) {
        case 400: throw APIError.invalidRequest
        case 404: throw APIError.machineNotFound
        default:
            break
        }
        
        return String(data: data, encoding: .utf8)
    }
}
