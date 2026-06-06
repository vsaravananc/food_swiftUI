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
            VStack(spacing: 15){
                SearchHeaderView()
                SearchBarView()
            }
        }.scrollIndicators(.hidden)
    }
}


#Preview {
    SearchView()
}
