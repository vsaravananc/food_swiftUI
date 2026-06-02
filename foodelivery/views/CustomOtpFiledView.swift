//
//  CustomOtpFiledView.swift
//  foodelivery
//
//  Created by Saravanan V on 02/06/26.
//

import SwiftUI


struct CustomOtpFiledView: View {
    var otpField:Int
    @State var otpString:[String]
    @FocusState private var isFocused: Int?
    
    init(otpField: Int) {
        self.otpField = otpField
        self.otpString = Array(repeating: "", count: otpField)
        self.isFocused = 0
    }
    
    var body: some View {
        
        HStack(spacing:12){
            ForEach( 0..<otpField ,id: \.self) { index in
                
                TextField("", text: $otpString[index])
                    .frame(width: 48, height: 48)
                    .background(.gray.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .multilineTextAlignment(.center)
                    .keyboardType(.phonePad)
                    .textContentType(.oneTimeCode)
                    .focused($isFocused, equals: index)
                    .tag(index)
                    .onChange(of: otpString[index]) { oldValue, newValue in
                        
                        if newValue.count > 1 {
                            otpString[index] = String(newValue.prefix(1))
                        }
                        
                        if !newValue.isEmpty && index < otpField - 1 {
                            isFocused = index + 1
                        }
                    }
            }
        }
    }
}

#Preview {
    CustomOtpFiledView(otpField: 4)
}
