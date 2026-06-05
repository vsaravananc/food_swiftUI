//
//  HomeCardView.swift
//  foodelivery
//
//  Created by Saravanan V on 05/06/26.
//

import SwiftUI

struct HomeCardView: View {
    var resturant : RestaruntStructModel
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .frame(maxWidth: .infinity,maxHeight: 310)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay{
                VStack(alignment:.leading){
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(maxWidth: .infinity,minHeight: 210)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    VStack(alignment:.leading){
                        Text(resturant.title)
                            .font(.system(size: 25, weight: .regular, design: .default))
                        
                        Text((resturant.subtitle))
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        
                        Spacer()
                        
                        HStack(spacing: 20){
                            HStack{
                                Image(systemName: "star")
                                    .foregroundColor(.orange)
                                Text(resturant.rating)
                            }
                            
                            HStack{
                                Image(systemName: "truck.box")
                                    .foregroundColor(.orange)
                                Text(resturant.distance)
                                    .foregroundStyle(.gray)
                            }
                            
                            HStack{
                                Image(systemName: "timer")
                                    .foregroundColor(.orange)
                                Text(resturant.time)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }.padding(.horizontal,5)
                    
                }
            }
            .padding(.horizontal,10)
    }
}

#Preview {
    HomeCardView(
        resturant: RestaruntStructModel(title: "Rose Garden Restaruant",subtitle: "Burger - Chiken - Riche - Wings", rating: "4.7", time: "20min", distance: "Free")
    )
}
