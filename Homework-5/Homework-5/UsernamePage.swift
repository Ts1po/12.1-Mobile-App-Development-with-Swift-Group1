//
//  UsernamePage.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct UsernamePage: View {
    @State private var isLoginLayout = false
    var body: some View {
        VStack {
            // account
            Image("acc-person")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
            
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
                    Text("Username")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 60)
                    
                    TextField("", text: .constant(""))
                        .padding()
                        .frame(width: 250, height: 40)
                        .background(Color("label-color"))
                        .cornerRadius(10)
                        .padding(.top, 20)
                }
            }
            // Next Button
            Button(action: {
                isLoginLayout.toggle()
            }) {
                Text(isLoginLayout ? "Login" : "Next")
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .frame(width: 150, height: 40)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.top, 30)
            
            // Create Account
            NavigationLink(destination: UsernamePage()) {
                Text("Create Account")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding(.top, 40)
                    .font(.system(size: 20, weight: .bold))
            }
            
            // Forgot Password
            HStack {
                Image(systemName: "arrowtriangle.up.fill")
                    .padding(.top, 40)
                    .padding(.trailing, 20)
                    .foregroundColor(.black)
                    .font(.system(size: 30, weight: .bold))
                
                NavigationLink(destination: PasswordPage()) {
                    Text("Forgot Password")
                        .foregroundColor(.black)
                        .padding(.top, 40)
                        .font(.system(size: 20, weight: .bold))
                }
            }
        }
        
    }
}

#Preview {
    UsernamePage()
}
