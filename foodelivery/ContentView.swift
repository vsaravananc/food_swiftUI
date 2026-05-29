//
//  ContentView.swift
//  foodelivery
//
//  Created by Saravanan V on 29/05/26.
//

import SwiftUI

struct ContentView: View {
    @State var isSplashPresented: Bool = false
    var body: some View {
        NavigationStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 122, height: 59)
            .navigationDestination(isPresented: $isSplashPresented, destination: {
                SplashView()
            })
        }
        .onAppear{
            navigateToSplash()
        }
    }
    
    func navigateToSplash() {
        Task{
          try? await Task.sleep(for: .seconds(2))
          isSplashPresented = true
        }
    }
}

#Preview {
    ContentView()
}
