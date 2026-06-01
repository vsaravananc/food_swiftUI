//
//  ForgotView.swift
//  foodelivery
//
//  Created by Saravanan V on 01/06/26.
//

import SwiftUI

struct ForgotView: View {
    @Environment(\.dismiss) private var dismiss
    @State var email: String = ""
    var body: some View {
        NavigationStack {
            Image("circleGray")
                .resizable()
                .scaledToFit()
                .frame(width: 230, height: 240)
                .offset(x: -50, y: -50)
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity,
                    alignment: .topLeading
                )
                .background(Color.black)
                .overlay{
                    VStack{
                        Group{
                            Text("Forgot Password")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                            Text("Please sign in to your existing account ")
                                .font(.system(size: 20, weight: .light, design: .rounded))
                                .padding(.bottom,40)
                        }
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(Color.white)
                            .overlay{
                                
                                VStack(spacing: 20){
                                    
                                        customTextFiledView(label: "Email", placeholder: "Enter your email address", text: $email,imageSource: nil)
                                    .padding(.top,10)
                                    
                                
                                    
                                    customButtonView(label: "Send Code", action: {})
                                    
                                    Spacer()
                                }.padding()
                            }
                    }
                    .padding(.top, 80)
                }
                .navigationBarBackButtonHidden()
                .ignoresSafeArea()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading, content: {
                       Button(action: {
                           dismiss()
                       }, label: {
                           Image(systemName: "chevron.backward")
                               .padding(10)
                               .background(.white)
                               .clipShape(.circle)
                               .foregroundStyle(.black)
                       })
                    })
                })
        }

    }
}


#Preview {
    ForgotView()
}
