//
//  CoffeeMachine.swift
//  CoffeIT-app
//
//  Created by Dmytro Virych on 2021-12-16.
//

import Foundation

// MARK: - CoffeeMachine
struct CoffeeMachine: Codable {
    let id: String
    let types: [TypeElement]
    let sizes: [Size]
    let extras: [Extra]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case types, sizes, extras
    }
}

// MARK: - Extra
struct Extra: Codable {
    let id, name: String
    let subselections: [Subselection]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, subselections
    }
}

// MARK: - Subselection
struct Subselection: Codable {
    let id, name: String

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
    }
}

// MARK: - Size
struct Size: Codable {
    let id, name: String
    let v: Int?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name
        case v = "__v"
    }
}

// MARK: - TypeElement
struct TypeElement: Codable {
    let id, name: String
    let sizes, extras: [String]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name, sizes, extras
    }
}
