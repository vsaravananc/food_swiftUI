//
//  customToogle_view.swift
//  foodelivery
//
//  Created by Saravanan V on 31/05/26.
//

import SwiftUI


struct checkToogleView: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {configuration.isOn.toggle()}) {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(configuration.isOn ? .blue: .gray)
                .padding(2)
        }
    }
}

#Preview(body: {
    Toggle("toogle",isOn: .constant(true)).toggleStyle(checkToogleView())
})
