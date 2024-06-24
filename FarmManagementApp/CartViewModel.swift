//
//  CartViewModel.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import Foundation
import Combine

class CartViewModel: ObservableObject {
    @Published var cartItems: [CartItem] = []
    
    func addToCart(product: Product, quantity: Int) {
        if let index = cartItems.firstIndex(where: { $0.product.id == product.id }) {
            cartItems[index].quantity += quantity
        } else {
            let newItem = CartItem(id: cartItems.count + 1, product: product, quantity: quantity)
            cartItems.append(newItem)
        }
    }
    
    func totalItems() -> Int {
        return cartItems.reduce(0) { $0 + $1.quantity }
    }
}


