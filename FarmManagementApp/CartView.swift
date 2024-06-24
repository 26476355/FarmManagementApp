//
//  CartView.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import SwiftUI

struct CartView: View {
    @ObservedObject var cartViewModel: CartViewModel
    
    var body: some View {
        VStack {
            List(cartViewModel.cartItems) { cartItem in
                HStack {
                    Text(cartItem.product.name)
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("Quantity: \(cartItem.quantity)")
                        .font(.subheadline)
                }
            }
            .navigationTitle("Cart")
            
            Text("Total Items: \(cartViewModel.totalItems())")
                .font(.headline)
                .padding()
            
            Spacer()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cartViewModel: CartViewModel())
    }
}

