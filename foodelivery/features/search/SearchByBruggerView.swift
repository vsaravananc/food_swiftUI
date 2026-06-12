//
//  SearchByBruggerView.swift
//  foodelivery
//
//  Created by Saravanan V on 12/06/26.
//

import SwiftUI

struct SearchByBruggerView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
            }.scrollIndicators(.hidden)
                .navigationBarBackButtonHidden()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading, content: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .clipShape(.circle)
                    })
                    
                    ToolbarItem(placement: .topBarLeading, content: {
                        HStack(alignment:.center){
                            Text("Brugger")
                            Image(systemName: "chevron.down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10, height: 10)
                        }.padding(.horizontal)
                            .padding(.vertical, 10)
                            .overlay{
                                RoundedRectangle(cornerRadius:  40)
                                    .stroke(Color.orange, lineWidth: 1.5)
                            }
                    })
                    
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding()
                            .background(Color.black)
                            .foregroundStyle(.white)
                            .clipShape(.circle)
                    })
                    
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Image(systemName: "slider.vertical.3")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .clipShape(.circle)
                    })
                    
                    
                })
        }
    }
}

#Preview {
    SearchByBruggerView()
}
