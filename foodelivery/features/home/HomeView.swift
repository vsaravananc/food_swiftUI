//
//  HomeView.swift
//  foodelivery
//
//  Created by Saravanan V on 03/06/26.
//

import SwiftUI


struct HomeView : View {
    private var restarunList : [RestaruntStructModel] = [
        RestaruntStructModel(title: "Rose garden restaurant", subtitle: "Burger - Chiken - Riche - Wings ", rating: "4.7", time: "Free", distance: "20 min"), RestaruntStructModel(title: "Rose garden restaurant", subtitle: "Burger - Chiken - Riche - Wings ", rating: "4.7", time: "Free", distance: "20 min"),
        RestaruntStructModel(title: "Rose garden restaurant", subtitle: "Burger - Chiken - Riche - Wings ", rating: "4.7", time: "Free", distance: "20 min"),
        RestaruntStructModel(title: "Rose garden restaurant", subtitle: "Burger - Chiken - Riche - Wings ", rating: "4.7", time: "Free", distance: "20 min"),
        RestaruntStructModel(title: "Rose garden restaurant", subtitle: "Burger - Chiken - Riche - Wings ", rating: "4.7", time: "Free", distance: "20 min")
    ]
    var body: some View {
        NavigationStack{
            ScrollView (.vertical){
                VStack(spacing: 12) {
                    HomeHeaderView()
                    NavigationLink(destination: {
                        SearchView()
                    }, label: {
                        HomeSearchView()
                    })
                    HomeCategoryView()
                    VStack(alignment: .leading, spacing: 18){
                        ForEach(0..<restarunList.count,id:\.self) { index in
                            HomeCardView(resturant: restarunList[index])
                                .frame(maxWidth: .infinity,minHeight: 300)
                        }
                    }
                }
            }.scrollIndicators(.hidden)
            .navigationBarBackButtonHidden()
        }
    }
}



#Preview {
    HomeView()
}
