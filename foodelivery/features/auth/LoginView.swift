//
//  LoginView.swift
//  foodelivery
//
//  Created by Saravanan V on 30/05/26.
//

import SwiftUI

struct LoginView : View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    
    
    
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
                            Text("Login In")
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
                                    
                                    
                                    VStack(spacing: 20){
                                        customTextFiledView(label: "Email", placeholder: "Enter your email address", text: $email,imageSource: nil)
                                        
                                        customTextFiledView(label: "Password", placeholder: "Enter your password", text: $password,imageSource: "eye.fill")
                                    }.padding(.top,10)
                                    
                                    HStack{
                                        
                                        HStack{
                                            Toggle("", isOn: $showPassword)
                                                .toggleStyle(checkToogleView())
                                            Text("Remember me ")
                                        }
                                        
                                        Spacer()
                                        
                                       NavigationLink(destination: {
                                           ForgotView()
                                       }, label: {
                                           Text("Forgot Password")
                                               .font(.footnote)
                                               .foregroundStyle(.orange)
                                       })
                                    }
                                    
                                    customButtonView(label: "Login", action: {
                                        
                                    })
                                    
                                    Spacer()
                                    
                                    HStack{
                                        Text("Don't have an account?")
                                            
                                        Text("Sign Up")
                                            .fontWeight(.medium)
                                            .foregroundStyle(.orange)
                                    }
                                    .font(.callout)
                                    
                                    Spacer()
                                    
                                    VStack{
                                        
                                        Text("Or")
                                        Spacer()
                                            .frame(height: 30)
                                        HStack(spacing:20){
                                            
                                            Image("facebook")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 60, height: 60)
                                            
                                            Image("x")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 60, height: 60)
                                            
                                            Image("ios")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 60, height: 60)
                                            
                                        }
                                    }
                                    
                                    Spacer()
                                    
                                }.padding()
                            }
                    }
                    .padding(.top, 80)
                }
                .ignoresSafeArea()
                .navigationBarBackButtonHidden()
        }
    }
}


#Preview {
    LoginView()
}
