//
//  SearchView.swift
//  foodelivery
//
//  Created by Saravanan V on 06/06/26.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing: 18){
                SearchHeaderView(perform: {
                    dismiss()
                })
                SearchBarView()
                SearchRecentView()
                SearchRecentRestaruntView()
                SearchGridProductView()
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
