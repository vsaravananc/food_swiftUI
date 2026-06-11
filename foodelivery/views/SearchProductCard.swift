//
//  SearchProductCard.swift
//  foodelivery
//
//  Created by Saravanan V on 11/06/26.
//

import SwiftUI

struct SearchProductCard: View {
    var title: String
    var subtitle: String
    var body: some View {
        VStack(alignment:.leading){
            RoundedRectangle(cornerRadius: 8)
                .frame(maxWidth: .infinity,minHeight: 100)
                .foregroundStyle(Color.gray)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
            
            Text(subtitle)
                .font(.subheadline)
        }.padding(.all,8)
    }
}

#Preview {
    SearchProductCard(
        title: "European Pizza", subtitle: "Uttora Coffe House"
    )
}
