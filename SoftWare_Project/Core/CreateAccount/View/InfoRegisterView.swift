//
//  InfoRegisterView.swift
//  Software_Project
//
//  Created by 곽서방 on 3/20/24.
//

import SwiftUI

struct InfoRegisterView: View {
    @State private var nameText: String = ""        // 이름 Text
    @State private var emailText: String = ""       // email Text
    @State private var passwordText: String = ""    // 패스워드 Text
    @State private var passwordConfirmText: String = ""   // 패스워드 확인 Text
    @State private var CertificationNumber: String = "" // 인증번호 Text
    @State var isShowingProgressView = false                   // 로그인 비동기 ProgressView
    @State var isShowingAlert: Bool = false                     // 로그인 완료 Alert
    
    @Environment(\.presentationMode) var mode // 화면 전환
    
    var body: some View {
        
            VStack{
                ScrollView {
                    
                    VStack(spacing: 30) {
                        
                        VStack(alignment: .leading) {
                            Text("이메일")
                                .font(.headline)
                            TextField("학교 이메일을 입력해주세요", text: $emailText)
                                .padding()
                                .background(.thinMaterial)
                                .cornerRadius(10)
                                .textInputAutocapitalization(.never)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("비밀번호")
                                .font(.headline)
                            SecureField("비밀번호를 8자리 이상 입력해주세요", text: $passwordText)
                                .padding()
                                .background(.thinMaterial)
                                .cornerRadius(10)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("비밀번호 확인")
                                .font(.headline)
                            SecureField("비밀번호를 다시 입력해주세요", text: $passwordConfirmText)
                                .padding()
                                .background(.thinMaterial)
                                .border(.red, width: passwordConfirmText != passwordText ? 1 : 0)
                                .cornerRadius(10)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("닉네임")
                                .font(.headline)
                            TextField("이름을 입력해주세요", text: $nameText)
                                .padding()
                                .background(.thinMaterial)
                                .cornerRadius(10)
                                .textInputAutocapitalization(.never)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("인증번호")
                                .font(.headline)
                            
                            HStack{
                                TextField("인증번호를 입력해주세요", text: $nameText)
                                    .frame(width:240)
                                    .padding()
                                    .background(.thinMaterial)
                                    .cornerRadius(10)
                                    .textInputAutocapitalization(.never)
                                Button{
                                    
                                }label: {
                                    Text("인증번호 전송")
                                        .frame(width: 100, height: 50)
                                        .background(Color("mainColor"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .font(.system(size: 14))
                                    
                                    
                                }
                                
                            }
                            
                        }
                        
                        Button {
                            isShowingAlert = true
                        } label: {
                            Text("회원 가입")
                                .frame(width: 100, height: 50)
                                .background(Color("mainColor"))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .alert("회원가입", isPresented: $isShowingAlert) {
                                    Button {
                                    } label: {
                                        Text("OK")
                                    }
                                } message: {
                                    Text("회원가입이 완료되었습니다.")
                                }
                                .padding(.top,40)
                        }
                        
                    }
                    .padding()
                    .padding(.bottom, 15)
                    
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("회원가입")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: 
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                    })
                                        
    }
}

#Preview {
    InfoRegisterView()
}

//.toolbar {
//    ToolbarItemGroup(placement: .navigationBarLeading) {
//        Button(action: {
//            // handle tap
//        }) {
//            Image(systemName: "chevron.backward")
//        }
//       
//    }
//}
