//
//  HomeHeaderView.swift
//  foodelivery
//
//  Created by Saravanan V on 03/06/26.
//

import SwiftUI


public struct HomeHeaderView: View {
    public var body: some View {
        HStack(spacing: 10){
            Image(systemName: "line.3.horizontal.decrease")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding()
                .background(Color.gray.opacity(0.1))
                .clipShape(.circle)
            
            VStack(alignment: .leading){
                Text("Deliver to")
                    .font(.headline)
                    .foregroundStyle(.orange)
                Text("Halal Lab office")
                    .font(.caption)
            }
            
            Spacer()
            
            Image(systemName: "bag")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundStyle(.white)
                .padding()
                .background(.black)
                .clipShape(.circle)
                .overlay(alignment:.topTrailing){
                    Text("2")
                        .font(.callout)
                        .foregroundStyle(.white)
                        .padding(.all,6)
                        .background(.orange)
                        .clipShape(.circle)
                }
        }.padding(.horizontal)
    }
}



#Preview {
    HomeHeaderView()
}
