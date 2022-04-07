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
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                       // .border(.red, width: CGFloat(wrongPassword))
                    SecureField("ConfirmPassword", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        
                    Button("Create"){
                     //  authenticateUser(username: username, password: password)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
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
