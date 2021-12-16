//
//  CoffeIT_appApp.swift
//  CoffeIT-app
//
//  Created by Dmitry Virych on 15.12.2021.
//

import SwiftUI

@main
struct CoffeIT_appApp: App {
    
    @State var isLoaded = false;
    
    init() {
        registerDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
//            NavigationView {
            ContentView().onAppear {
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                        isLoaded = true;
                    }
//                }
            }
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
