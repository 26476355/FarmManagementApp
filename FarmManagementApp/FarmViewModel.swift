//
//  FarmViewModel.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import Foundation
import Combine

class FarmViewModel: ObservableObject {
    @Published var farms: [Farm] = []
    
    init() {
        loadFarms()
    }
    
    private func loadFarms() {
        // Mock data with products
        farms = [
            Farm(id: 1, name: "Green Valley", location: "California", area: 120.5, imageName: "farm1", products: [
                Product(id: 1, name: "Apples", quantity: 100),
                Product(id: 2, name: "Oranges", quantity: 150)
            ]),
            Farm(id: 2, name: "Sunny Acres", location: "Texas", area: 200.0, imageName: "farm2", products: [
                Product(id: 3, name: "Wheat", quantity: 500),
                Product(id: 4, name: "Corn", quantity: 300)
            ]),
            Farm(id: 3, name: "Blue Hills", location: "Florida", area: 75.8, imageName: "farm3", products: [
                Product(id: 5, name: "Tomatoes", quantity: 200),
                Product(id: 6, name: "Lettuce", quantity: 250)
            ])
        ]
    }
    
    func getFarm(by id: Int) -> Farm? {
        return farms.first { $0.id == id }
    }
}


