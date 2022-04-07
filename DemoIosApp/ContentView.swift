//
//  ContentView.swift
//  DemoIosApp
//
//  Created by Bhumika Patel on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Home()
    }
}
struct Home: View {
    @State var isShow = false
    
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(
                    destination: SignUpView(isShow: self.$isShow),
                    isActive: self.$isShow,
                    label:  { Text("") }
                ).hidden()
                
             LoginView(isShow: $isShow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
