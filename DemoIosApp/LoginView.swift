//
//  LoginView.swift
//  DemoIosApp
//
//  Created by Bhumika Patel on 07/04/22.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
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
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                       
                    Text("Log in your existant Account")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureInputView("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .padding()
                    Button("Login"){
                      authenticateUser(username: username, password: password)
                    }
                    .frame(width: 150, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    .foregroundColor(.white)
                    .font(.title3)
                    
                    Button("Forgot Password?"){
                        
                        
                    }
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.586, saturation: 0.649, brightness: 0.854)/*@END_MENU_TOKEN@*/)
                    
                    HStack {
                        Text("Don't have account? ")
                        Text("Sign Up")
                            .bold()
                            .foregroundColor(.red)
                            .onTapGesture {
                                self.isShow.toggle()
                            }
                    }
                    .padding()
                    //.foregroundColor(.white)
                    .frame(width: 300, height: 30)
                    //.background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("You are logged in @\(username)"),isActive: $showingLoginScreen) {
                        EmptyView()
                }
            }
        }
            .navigationBarHidden(true)
    }
}
func authenticateUser(username: String, password: String) {
    if username.lowercased().trimmingCharacters(in: [" "]) == "mario2022" {
        wrongUsername = 0
        if password.lowercased() == "abc123" {
            wrongPassword = 0
            showingLoginScreen = true
        } else {
            wrongPassword = 2
        }
        }else {
            wrongUsername = 2
    }
}
}



//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
