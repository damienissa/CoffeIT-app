//
//  CoffeIT_appApp.swift
//  CoffeIT-app
//
//  Created by Dmitry Virych on 15.12.2021.
//

import SwiftUI

@main
struct CoffeIT_appApp: App {
    
    init() {
        registerDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func registerDependencies() {
        do {
            try di.register(Networking())
        } catch {
            print(error)
        }
    }
}
