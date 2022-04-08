//
//  ForgetPasswordView.swift
//  DemoIosApp
//
//  Created by Bhumika Patel on 08/04/22.
//

import SwiftUI

struct ForgetPasswordView: View {
    @State private var username = ""
    @State private var wrongUsername = 0
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
            
                VStack(spacing: 10) {
                Text("ForgetPassword")
                    .font(.largeTitle)
                    .bold()
                   
                Text("Please your UserName")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongUsername))
                    
                    Button("Send"){
                    
                    }
                    .frame(width: 150, height: 40)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    .foregroundColor(.white)
                    .font(.title3)
            }
            }
        }
    }
}

struct ForgetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordView()
    }
}
