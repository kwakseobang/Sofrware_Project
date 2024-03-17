//
//  LoginBtnStyle.swift
//  Software_Project
//
//  Created by 곽서방 on 3/17/24.
//

import SwiftUI


struct LoginBtnStyle: ButtonStyle {
    let textColor: Color
    let borderColor: Color
    
    init(
        textColor: Color,
        borderColor: Color
    ) {
        self.textColor = textColor
        self.borderColor = borderColor
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 14))
            .foregroundColor(self.textColor)
            .frame(maxWidth: .infinity, maxHeight: 40)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(self.borderColor, lineWidth: 0.8)
            }
            .padding(.horizontal, 15)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}
