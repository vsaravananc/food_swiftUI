//
//  customButtonView.swift
//  foodelivery
//
//  Created by Saravanan V on 30/05/26.
//

import SwiftUI


struct customButtonView: View {
    
    let label: String
    let action: () ->Void
    
    var body: some View {
        Button(action: action, label: {
            Text(label)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, maxHeight: 55)
                .background(.orange)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .font(.system(size: 22, weight: .medium,design: .rounded))
        })
    }
}


#Preview {
    customButtonView(label:"Next", action: { })
}
