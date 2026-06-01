//
//  StoryView.swift
//  foodelivery
//
//  Created by Saravanan V on 29/05/26.
//

import SwiftUI


struct StoryView : View {
    
    init(){
        UIPageControl.appearance().pageIndicatorTintColor = .orange.withAlphaComponent(0.5)
        UIPageControl.appearance().currentPageIndicatorTintColor =
            .orange
    }
    
    let viewList = ["All your favorites", "Order from choosen chef", "Free delivery offers"]
    
    @State private var selectedIndex = 0
    @State private var moveToHome : Bool = false;
    
    var body: some View {
        NavigationStack{
            VStack {
                
                TabView (selection: $selectedIndex){
                    ForEach(Array(viewList.enumerated()), id: \.offset) { index,item in
                        VStack (alignment:.center ,spacing: 30){
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray.opacity(0.2))
                                .frame(maxWidth: .infinity, maxHeight: 370)
                                .padding(.horizontal, 25)
                                .padding(.top,20)
                            
                            VStack(spacing: 10) {
                                Text(item)
                                    .font(.system(size: 25, weight: .bold, design: .default))
                                
                                Text("Get all your loved foods in one once place, you just place the orer we do the rest")
                                    .multilineTextAlignment(.center)
                                    .font(.callout)
                                    .foregroundStyle(.gray)
                            }
                            Spacer()
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page)
                .frame(maxWidth: .infinity, maxHeight: 600)
                
                Spacer()
                
                Group{
                    customButtonView(label: "Next", action: {
                        if selectedIndex < viewList.count - 1 {
                            withAnimation {
                                selectedIndex += 1
                            }
                        }else{
                            moveToHome = true
                        }
                    })
                    .padding(.bottom,10)
                    
                    if(selectedIndex < 2){
                        Button(action: {
                            withAnimation {
                                selectedIndex += (viewList.count - 1) ;
                            }
                        }, label: {
                            Text("Skip")
                                .foregroundStyle(.black)
                        })
                        .padding(.bottom, 15)
                    }
                }.padding(.horizontal)
            }
            .navigationBarBackButtonHidden()
            .navigationDestination(isPresented: $moveToHome, destination: {
                LoginView()
            })
        }
    }
}


#Preview {
    StoryView()
}
