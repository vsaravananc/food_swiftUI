//
//  SearchHeaderView.swift
//  foodelivery
//
//  Created by Saravanan V on 06/06/26.
//

import SwiftUI

public struct SearchHeaderView: View {
    var perform : () -> Void
    public var body: some View {
        HStack{
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding()
                .background(Color.gray.opacity(0.1))
                .clipShape(.circle)
                .onTapGesture(perform: perform)
            
            Text("Search")
                .font(.title2)
                .padding(.leading,5)
            
            Spacer()
            
            Image(systemName: "bag")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundStyle(.white)
                .padding(.all)
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
        }.padding(.horizontal,16)
    }
}


#Preview {
    SearchHeaderView(perform: {
        
    })
}
