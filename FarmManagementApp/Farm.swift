//
//  Farm.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import Foundation

struct Product: Identifiable {
    let id: Int
    let name: String
    let quantity: Int // Available quantity
}

struct Farm: Identifiable {
    let id: Int
    let name: String
    let location: String
    let area: Double // in acres
    let imageName: String
    let products: [Product] // List of products available on the farm
}

