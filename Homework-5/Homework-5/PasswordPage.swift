//
//  PasswordPage.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct PasswordPage: View {
    @State private var isLoginLayout = false
    var body: some View {
        VStack {
            Text("To view and manage the Apple product list, please enter your password below. This ensures secure access to the latest product details and updates. If you’ve forgotten your password, you can reset it anytime")
                .frame(width: 280, height: 300)
                .font(.system(size: 25, weight: .light))
            if isLoginLayout {
                VStack {
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 60)
                    
                    SecureField("Password", text: .constant(""))
                        .padding()
                        .frame(width: 250, height: 40)
                        .background(Color("label-color"))
                        .cornerRadius(10)
                        .padding(.top, 20)
                }
            } else {
                VStack {
                    Text("Password: ")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 60)
                    
                    SecureField("", text: .constant(""))
                        .padding()
                        .frame(width: 250, height: 40)
                        .background(Color("label-color"))
                        .cornerRadius(10)
                        .padding(.top, 20)
                }
            }
            // Login Button
            Button(action: {
                isLoginLayout.toggle()
            }) {
                Text(isLoginLayout ? "Next" : "Login")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(width: 150, height: 40)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.top, 30)
            .padding(.bottom, 100)
        }
    }
}

#Preview {
    PasswordPage()
}
