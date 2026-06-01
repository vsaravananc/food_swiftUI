//
//  SignInView.swift
//  foodelivery
//
//  Created by Saravanan V on 01/06/26.
//

import SwiftUI

struct SignInView : View {
    
    @State var email: String = ""
    @State var password: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack{
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
                            Text("Sign Up")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                            Text("Please sign up to get started")
                                .font(.system(size: 20, weight: .light, design: .rounded))
                                .padding(.bottom,40)
                        }
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(Color.white)
                            .overlay{
                                VStack(spacing: 20){
                                    
                                    
                                    VStack(spacing: 20){
                                        
                                        customTextFiledView(label: "Name", placeholder: "Jhone Doe", text: $email,imageSource: nil)
                                        
                                        customTextFiledView(label: "Email", placeholder: "Enter your email address", text: $email,imageSource: nil)
                                        
                                        customTextFiledView(label: "Password", placeholder: "Enter your password", text: $password,imageSource: "eye.fill")
                                        
                                        customTextFiledView(label: "Re-Type Password", placeholder: "Enter again password", text: $password,imageSource: "eye.fill")
                                    }.padding(.top,10)
                                    
                                    customButtonView(label: "Sign Up", action: {
                                        
                                    })
                                    
                                    
                                   
                                    Spacer()
                                    
                                }.padding()
                            }
                    }
                    .padding(.top, 80)
                }
                .ignoresSafeArea()
                .navigationBarBackButtonHidden()
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            dismiss()
                        }) {
                            Image(systemName: "chevron.backward")
                                .padding(10)
                                .background(.white)
                                .clipShape(.circle)
                                .foregroundStyle(.black)
                                
                        }
                    }
                })
        }
    }
}


#Preview {
    SignInView()
}
