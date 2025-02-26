//
//  LogInPage.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct LogInPage: View {
    var body: some View {
        NavigationStack {
            VStack {
                // Account Image
                Image("acc-person")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .padding(.top, 50)
                
                // Username
                HStack {
                    Text("Username:")
                        .frame(width: 100, alignment: .leading)
                        .font(.system(size: 18, weight: .bold))
                    
                    TextField("", text: .constant(""))
                        .padding()
                        .frame(width: 200, height: 40)
                        .background(Color("label-color"))
                        .cornerRadius(10)
                }
                .padding(.top, 30)

                // Password
                HStack {
                    Text("Password:")
                        .frame(width: 100, alignment: .leading)
                        .font(.system(size: 18, weight: .bold))
                    
                    SecureField("", text: .constant("")) 
                        .padding()
                        .frame(width: 200, height: 40)
                        .background(Color("label-color"))
                        .cornerRadius(10)
                }
                .padding(.top, 10)

                // Log in Button
                NavigationLink(destination: itemsPage()) {
                    Text("Log In")
                        .foregroundColor(.white)
                        .frame(width: 120, height: 40)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .font(.system(size: 20, weight: .bold))
                }
                .padding(.top, 30)

                // Create Account
                NavigationLink(destination: UsernamePage()) {
                    Text("Create Account")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(.top, 20)
                }

                // Forgot Password
                HStack {
                    Image(systemName: "arrowtriangle.up.fill")
                        .foregroundColor(.black)
                        .font(.system(size: 30, weight: .bold))
                    
                    NavigationLink(destination: PasswordPage()) {
                        Text("Forgot Password")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                    }
                }
                .padding(.top, 20)
            }
        }
    }
}

#Preview {
    LogInPage()
}

