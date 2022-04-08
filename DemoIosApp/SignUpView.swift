//
//  SignUpView.swift
//  DemoIosApp
//
//  Created by Bhumika Patel on 07/04/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Binding var isShow: Bool
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                VStack {
                    Text("Register")
                        .font(.largeTitle)
                        .bold()
                    Text("Create New your Account")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                 
                    TextField("Email", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                     //   .border(.red, width: CGFloat(wrongUsername))
                    SecureInputView("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                       // .border(.red, width: CGFloat(wrongPassword))
                   SecureInputView("ConfirmPassword", text: $confirmPassword)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        
                    Button("Create"){
                     //  authenticateUser(username: username, password: password)
                        showingAlert = true
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .alert("Successful Account Create", isPresented: $showingAlert) {
                
                        Button("Ok", role: .cancel) {
                            isShow.toggle()
                        }
                    }
                }
            }
        }
    }
}

//struct SignUpView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUpView()
//    }
//}
