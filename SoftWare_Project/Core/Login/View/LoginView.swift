//
//  LoginView.swift
//  Software_Project
//
//  Created by 곽서방 on 3/15/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        NavigationView{
            VStack {
                TitleView()
                    .padding(.top,70)
                Spacer()
                    .frame(height: 50)
                LoginInputView()
                LoginTabView()
                FindAccountView()
                Spacer()
                LoginApiBtnView()
            }
        }
    }
}
//MARK: 헤더 뷰
private struct TitleView: View {
    fileprivate var body: some View {
        ZStack {
            VStack{
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .padding()
                
                Text("안서동 자취방 정보는")
                    .font(.system(size: 20,weight: .semibold))
                HStack{
                    Text("안방")
                        .font(.system(size: 40,weight: .bold))
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30)

                }
                .padding(.leading)
            }
        }
    }
}
//MARK: 아이디 비밀번호 입력 뷰
private struct LoginInputView: View {
    @State var login: String = ""
    @State var password: String = ""
    fileprivate var body: some View {
        // ID 텍스트 필드
        HStack {
            Image(systemName: "person")
                .frame(width: 20)
                .font(.system(size: 20))
                .foregroundColor(.gray)
            TextField("아이디", text: $login)
                .frame(width: 300, height: 20)
                .keyboardType(.emailAddress) //email 형식으로 입력 받도록
                .textCase(.lowercase)
                .autocapitalization(.none) // 대문자 설정 지우기
                .disableAutocorrection(false) // 자동 수정 설정 해제
        }
        .padding()
        .overlay(
            RoundedRectangle(
                cornerRadius: 4).stroke(Color.black, lineWidth: 2)
        )
        .padding(.bottom, 5)
        
        HStack {
            Image(systemName: "key")
                .frame(width: 20,height: 20)
                .font(.system(size: 20))
                .foregroundColor(.gray)
            SecureField("비밀번호", text: $password)
                .frame(width: 300, height: 10)
                .autocapitalization(.none)
        }
        .padding()
        .overlay(
            RoundedRectangle(
                cornerRadius: 4).stroke(Color.black, lineWidth: 2)
        )
    }
    
}

private struct LoginTabView: View {
    fileprivate var body: some View {
            NavigationLink{
                
                HomeView()
            }label: {
                Text("Login")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .overlay {
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(.bkText, lineWidth: 0.8)
                    }
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .padding(.horizontal, 15)
            }
    }
}



//MARK: 아이디 비밀번호 찾는 뷰
private struct FindAccountView: View {
   fileprivate var body: some View {
       HStack(spacing: 30){
           
           HStack{
               Button{
                   
               }label: {
                   Text("id 찾기")
                       .foregroundColor(.gray)
               }
           }
           
           HStack{
               Button{
                   
               }label: {
                   Text("비밀번호 찾기")
                       .foregroundColor(.gray)
               }
           }
       }
    }
}
//MARK: API 연동 로그인
private struct LoginApiBtnView: View {
    fileprivate var body: some View {
        VStack(spacing: 5) {
            Button{
                //TODO:
            }label: {
                Text("Google로 로그인")
            }
            .buttonStyle(LoginBtnStyle(textColor: .black, borderColor: .gray))
            
            Button{
                //TODO:
            }label: {
                Text("Apple로 로그인")
            }
            .buttonStyle(LoginBtnStyle(textColor: .black, borderColor: .gray))
        }

    }
}
#Preview {
    LoginView()
}
