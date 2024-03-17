//
//  SplashView.swift
//  Software_Project
//
//  Created by 곽서방 on 3/15/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .foregroundColor(.black)
                .scaledToFit()
                .frame(width: 150)
                .padding()
            
            Text("안서동 자취방 정보는")
                .font(.system(size: 20,weight: .semibold))
            HStack{
                Text("안방")
                    .font(.system(size: 40,weight: .bold))
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 33)
            }
        }
    }
}

#Preview {
    SplashView()
}
