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
                    .padding(.top,40)
                Spacer()
                    .frame(height: 30)
                LoginInputView()
                
                LoginTabView()
                    .padding(.vertical,5)
                FindAccountView()
                Spacer()
                    .frame(height: 50)
                CreateInfoBtnView()
                //                LoginApiBtnView()
            }
        }
    }
}
//MARK: - 헤더 뷰
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
                        .foregroundColor(.black)

                }
                .padding(.leading)
            }
        }
    }
}
//MARK: - 아이디 비밀번호 입력 뷰
private struct LoginInputView: View {
    @State var login: String = ""
    @State var password: String = ""
    fileprivate var body: some View {
        // ID 텍스트 필드
        VStack(spacing:15){
            TextField("학교 이메일", text: $login)
                .frame(width: 330,height: 20)
                .padding()
                .keyboardType(.emailAddress) //email 형식으로 입력 받도록
                .background(.thinMaterial)
                .cornerRadius(10)
                .textCase(.lowercase)
                .autocapitalization(.none) // 대문자 설정 지우기
                .disableAutocorrection(false) // 자동 수정 설정 해제
                .textInputAutocapitalization(.never)
            
            
            
            SecureField("비밀번호", text: $password)
                .frame(width: 330,height: 20)
                .padding()
                .background(.thinMaterial)
                .cornerRadius(10)
                .autocapitalization(.none)
            
        }
    }
    
}

private struct LoginTabView: View {
    fileprivate var body: some View {
            NavigationLink{
                
                HomeView()
            }label: {
                Text("Login")

                 
            }
            .font(.system(size: 20,weight: .bold))
            .frame(width: 330,height: 20)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.clear, lineWidth: 2) // 외곽선 둥글게
            )
            .background(Color("mainColor"))
            .foregroundColor(.white)
        
    }
}



// MARK: -  Etc.. 뷰
private struct FindAccountView: View {
    @State private var isAutoLogin = false
    fileprivate var body: some View {
        
        HStack{
            Toggle(isOn: $isAutoLogin) {
                Text("자동 로그인")
            }
            .toggleStyle(iOSCheckboxToggleStyle())
            Spacer()
            
            HStack(spacing: 5){
                
                HStack{
                    Button{
                        
                    }label: {
                        Text("ID 찾기")
                            .foregroundColor(.gray)
                    }
                }
                Text("ㅣ")
                    .foregroundColor(.gray)
                
                HStack{
                    Button{
                        
                    }label: {
                        Text("비밀번호 찾기")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.trailing)
            .font(.system(size: 15))
        }
        .padding(.leading,20)
    }
}

private struct CreateInfoBtnView: View {
    fileprivate var body: some View {
        
        HStack{
            Text("아직 회원이 아니신가요?")
                .font(.system(size: 14))
                .foregroundColor(.gray)
            NavigationLink {
                
            }label: {
                Text("회원가입 >")
                    .foregroundColor(Color("mainColor"))
            }
        }
        Spacer()
    
    }
}
//MARK: - API 연동 로그인
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
