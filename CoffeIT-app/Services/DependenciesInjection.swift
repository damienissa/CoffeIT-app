//
//  DependenciesInjection.swift
//  CoffeIT-app
//
//  Created by Dmitry Virych on 15.12.2021.
//

import Foundation

let di = DependenciesInjection()

final class DependenciesInjection {
    private var container = [String: Any]()
    
    func register<T>(_ object: T) throws {
        let key = String(describing: T.self)
        
        if container[key] != nil {
            throw DIErrors.doubleRegistration(key)
        }
        container[key] = object
    }
    
    func resolve<T>() -> T? {
        let key = String(describing: T.self)
        return container[key] as? T
    }
}

enum DIErrors: Error {
    case doubleRegistration(String)
    
    var message: String {
        switch self {
        case let .doubleRegistration(type): return "You try to register \(type) that was already registred!";
        }
    }
}
