//
//  customTextFiledView.swift
//  foodelivery
//
//  Created by Saravanan V on 30/05/26.
//

import SwiftUI


struct customTextFiledView: View {
    let label : String
    let placeholder: String
    @Binding var text: String
    let imageSource : String?
    var body: some View {
        VStack(alignment:.leading,spacing:5){
            Text(label)
                .font(.system(size: 20))
                .fontWeight(.regular)
            Rectangle().frame(height: 70)
                .foregroundStyle(.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay{
                    if(imageSource != nil){
                        HStack{
                            TextField(text: $text, label: {
                                Text(placeholder)
                                    .font(.system(size: 18))
                                    .foregroundStyle(.black.opacity(0.6))
                            })
                            
                            Image(systemName: imageSource!)
                            
                        }.padding(.horizontal,10)
                    }else{
                        TextField(text: $text, label: {
                            Text(placeholder)
                                .font(.system(size: 18))
                                .foregroundStyle(.black.opacity(0.6))
                        }).padding(.horizontal,10)
                    }
                }
        }
    }
}

#Preview {
    @Previewable @State var text = ""
    customTextFiledView(
        label: "Email",
        placeholder: "Enter your email",
        text: $text,
        imageSource: nil
    );
}
