//
//  FarmListView.swift
//  FarmManagementApp
//
//  Created by Malebo, Poulo P on 2024/06/24.
//

import SwiftUI

struct FarmListView: View {
    @ObservedObject var viewModel = FarmViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.farms) { farm in
                NavigationLink(destination: FarmDetailView(farm: farm)) {
                    HStack {
                        Image(farm.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipped()
                            .cornerRadius(8)
                            .shadow(radius: 4)
                        
                        VStack(alignment: .leading) {
                            Text(farm.name)
                                .font(.headline)
                            
                            Text(farm.location)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .padding(.leading, 8)
                    }
                }
                .padding(.vertical, 8)
            }
            .navigationTitle("Farms")
        }
    }
}

struct FarmListView_Previews: PreviewProvider {
    static var previews: some View {
        FarmListView()
    }
}

