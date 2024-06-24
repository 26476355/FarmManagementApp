//
//  CartItem.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import Foundation

struct CartItem: Identifiable {
    let id: Int
    let product: Product
    var quantity: Int // Changed to var
}


