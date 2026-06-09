//
//  SearchView.swift
//  foodelivery
//
//  Created by Saravanan V on 06/06/26.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 18){
                SearchHeaderView()
                SearchBarView()
                SearchRecentView()
                SearchRecentRestaruntView()
                
            }
        }
        .ignoresSafeArea(.all,edges: [.bottom])
        .scrollIndicators(.hidden)
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    SearchView()
}
