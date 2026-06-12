//
//  SearchRecentView.swift
//  foodelivery
//
//  Created by Saravanan V on 09/06/26.
//

import SwiftUI


struct SearchRecentView: View {
    var body: some View {
        VStack (alignment:.leading){
            Text("Recent Keywords")
                .font(.title2)
                .fontWeight(.medium)
            ScrollView(.horizontal){
                HStack(alignment:.center,spacing:15) {
                    
                    SearchRecentButtonView(title: "Burger")
                    SearchRecentButtonView(title: "Sandwich")
                    SearchRecentButtonView(title: "Pizza")
                    SearchRecentButtonView(title: "Sanwich")
                    
                    
                }
            }.frame(maxWidth: .infinity,maxHeight: 50,alignment: .center)
            .scrollIndicators(.hidden)
        }.padding(.leading,20)
    }
}


struct SearchRecentButtonView: View {
    var title : String
     var body: some View {
      Text(title)
             .padding()
             .padding(.horizontal,5)
             .cornerRadius(30)
             .overlay(
                     RoundedRectangle(cornerRadius: 30)
                     .stroke(.gray,lineWidth: 1)
                 )
    }
}

#Preview {
    SearchRecentView()
}
