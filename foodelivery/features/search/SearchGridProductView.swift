//
//  SearchGridProductView.swift
//  foodelivery
//
//  Created by Saravanan V on 11/06/26.
//

import SwiftUI

struct SearchGridProductView: View {
    var body: some View {
        Grid(alignment:.leading,horizontalSpacing: 8){
            Text("Popular Fast Food")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.bottom,2)
            GridRow{
                SearchProductCard(title: "European Pizza", subtitle: "Uttora Coffe House")
                SearchProductCard(title: "Buffalo Pizza", subtitle: "Uttora Coffe House")
            }
            GridRow{
                SearchProductCard(title: "European Pizza", subtitle: "Uttora Coffe House")
                SearchProductCard(title: "Buffalo Pizza", subtitle: "Uttora Coffe House")
            }
           
        }.padding(.horizontal,16)
    }
}

#Preview {
    SearchGridProductView()
}
