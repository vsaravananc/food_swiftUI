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
    
    var body: some View {
        VStack {
            
            TabView {
                ForEach(viewList, id: \.self) { item in
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
                }
            }
            .tabViewStyle(.page)
            .frame(maxWidth: .infinity, maxHeight: 600)
            
            Spacer()
            
            Group{
                Button(action: {
                    
                    
                }, label: {
                    Text("Next")
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: 45)
                        .background(.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .font(.headline)
                })
                .padding(.bottom,10)
                
                Text("Skip")
                    .padding(.bottom, 15)
                
            }.padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    StoryView()
}
