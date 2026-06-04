//
//  HomeView.swift
//  foodelivery
//
//  Created by Saravanan V on 03/06/26.
//

import SwiftUI


struct HomeView : View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
               HomeHeaderView()
               HomeSearchView()
               HomeCategoryView()
                Text("Hello, World!")
            }
        }
    }
}



#Preview {
    HomeView()
}
