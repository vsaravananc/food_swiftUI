//
//  SearchBarView.swift
//  foodelivery
//
//  Created by Saravanan V on 06/06/26.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .foregroundStyle(Color.gray.opacity(0.2))
            
            .overlay(alignment:.leading){
                HStack{
                    Image(systemName: "magnifyingglass")
                    Text( "Search dishes and restaurants")
                    Spacer()
                    Image(systemName: "xmark.circle")
                        .foregroundStyle(Color.gray)
                        
                }.padding(.horizontal,10)
            }
            .frame(maxWidth: .infinity,minHeight: 70)
            .padding(.horizontal,16)
    }
}


#Preview {
    SearchBarView()
}
