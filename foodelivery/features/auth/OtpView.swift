//
//  OtpView.swift
//  foodelivery
//
//  Created by Saravanan V on 01/06/26.
//

import SwiftUI


struct OtpView : View {
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
                            Text("Verification")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                            Text("We have sent a code to your email")
                                .font(.system(size: 20, weight: .light, design: .rounded))
                                .padding(.bottom,10)
                            
                            Text("example@gmail.com")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .padding(.bottom,20)
                        }
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        
                        RoundedRectangle(cornerRadius: 40)
                            .foregroundStyle(Color.white)
                            .overlay{
                                
                                VStack(spacing: 20){
                                    
                                    HStack{
                                        Text("Code")
                                        Spacer()
                                        HStack(alignment: .bottom,spacing: 5){
                                            Text("Resend")
                                                .underline()
                                            Text("in.50 sec")
                                                .font(.footnote)
                                                .foregroundStyle(.gray)
                                        }
                                    }
                                    .padding(.top,20)
                                    
                                    CustomOtpFiledView(otpField: 6)
                                    
                                    customButtonView(label: "Verify", action: {})
                                    
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
    OtpView()
}
