//
//  HomeCategoryView.swift
//  foodelivery
//
//  Created by Saravanan V on 05/06/26.
//

import SwiftUI


struct HomeCategoryView: View {
    
    private var categories: [String] = ["Pizza", "Burger", "Pasta", "Dessert", "Beverage"]
    
    var body: some View {
        VStack {
            HStack {
                Text("All Categories")
                Spacer()
                HStack {
                    Text("See All")
                    Image(systemName: "chevron.forward")
                }
            }.padding(.horizontal)
            
            ScrollView(.horizontal){
                LazyHStack(spacing: 14) {
                    ForEach(0..<categories.count, id: \.self) { index in
                        CustomChipView(isSelected: index == 0, lable: categories[index])
                    }
                }
            }
            .scrollIndicators(.hidden)
            .padding(.leading)
            .frame(height: 65)
               
            
        }.padding(.top)
    }
}


#Preview {
    HomeCategoryView()
}
