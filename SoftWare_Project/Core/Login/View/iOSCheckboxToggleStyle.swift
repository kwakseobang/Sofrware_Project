//
//  iOSCheckboxToggleStyle.swift
//  Software_Project
//
//  Created by 곽서방 on 3/20/24.
//

import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button{
            configuration.isOn.toggle()
        }label: {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 20,height: 20)
                configuration.label
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
            }
        }
    }
}
