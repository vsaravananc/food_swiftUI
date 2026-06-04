//
//  CustomChipView.swift
//  foodelivery
//
//  Created by Saravanan V on 05/06/26.
//

import SwiftUI


struct CustomChipView: View {
    var isSelected: Bool
    var lable : String
    var body: some View {
        HStack {
            Circle()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 40, height: 40)
            Text(lable)
        }
        .padding(.horizontal, 7)
        .padding(.vertical,5)
        .background( isSelected ? Color.yellow.opacity(0.9)  :  Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 40))
        .shadow(radius: 5)
    }
}

#Preview {
    CustomChipView(isSelected: false,lable: "Veg")
}
