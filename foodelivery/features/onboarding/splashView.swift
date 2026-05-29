//
//  splashView.swift
//  foodelivery
//
//  Created by Saravanan V on 29/05/26.
//

import SwiftUI

struct SplashView : View {
    @State var navigateToStory: Bool = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color.white
                
                Image("circleBlack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230, height: 240)
                    .offset(x: 0, y: -50)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                
                
                Image("circleOrange")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230, height: 240)
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity,
                        alignment: .bottomTrailing
                    )
                
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 122, height: 59)
                
                
            }
            .ignoresSafeArea(edges: .all)
            .navigationBarBackButtonHidden()
            .navigationDestination(isPresented: $navigateToStory, destination: {
                StoryView()
            })
        }
        .onAppear {
            navigateToStoryView()
        }
    }
    
    func navigateToStoryView() {
        Task {
            try? await Task.sleep(for: .seconds(2))
            navigateToStory = true
        }
    }
}


#Preview {
    SplashView()
}
