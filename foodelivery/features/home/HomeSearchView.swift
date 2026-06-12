//
//  HomeSearchView.swift
//  foodelivery
//
//  Created by Saravanan V on 03/06/26.
//

import SwiftUI


struct HomeSearchView: View {
    var body: some View {
        VStack(alignment:.leading, spacing:10){
            HStack{
                Text("Hey Halal,")
                Text("Good Afternoon!")
                    .font(.headline)
                    
            }.foregroundStyle(.black)
            
            RoundedRectangle(cornerRadius: 8)
                .frame(width: .infinity, height: 60)
                .foregroundStyle(.gray.opacity(0.2))
                .overlay(alignment:.leading){
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search for restaurants")
                            .font(.headline)
                            .fontWeight(.medium)
                            
                    }
                    .foregroundStyle(.gray)
                    .padding(.horizontal)
                }
        }.padding(.horizontal)
    }
}

#Preview {
    HomeSearchView()
}
