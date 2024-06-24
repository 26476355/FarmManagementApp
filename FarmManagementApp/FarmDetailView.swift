//
//  FarmDetailView.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import SwiftUI

struct FarmDetailView: View {
    var farm: Farm
    @StateObject private var cartViewModel = CartViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(farm.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(8)
                    .shadow(radius: 10)
                
                Text(farm.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Location: \(farm.location)")
                    .font(.title2)
                    .foregroundColor(.secondary)
                
                Text("Area: \(farm.area) acres")
                    .font(.title2)
                    .foregroundColor(.secondary)
                
                Text("Available Products")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                ForEach(farm.products) { product in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.headline)
                            
                            Text("Quantity: \(product.quantity)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            cartViewModel.addToCart(product: product, quantity: 1)
                        }) {
                            Text("Add to Cart")
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                    .padding(.vertical, 4)
                }
                
                Spacer()
                
                NavigationLink(destination: CartView(cartViewModel: cartViewModel)) {
                    Text("View Cart (\(cartViewModel.totalItems()))")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
            }
            .padding()
        }
        .navigationTitle("Farm Details")
    }
}

struct FarmDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FarmDetailView(farm: Farm(
            id: 1,
            name: "Green Valley",
            location: "California",
            area: 120.5,
            imageName: "farm1",
            products: [
                Product(id: 1, name: "Apples", quantity: 100),
                Product(id: 2, name: "Oranges", quantity: 150)
            ])
        )
    }
}



