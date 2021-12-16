//
//  Usecase.swift
//  CoffeIT-app
//
//  Created by Dmytro Virych on 2021-12-16.
//

import Foundation

class Usecase {
    private let repository: IRemoteRepository
    init(_ repository: IRemoteRepository) {
        self.repository = repository
    }
}
