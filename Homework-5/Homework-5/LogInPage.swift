//
//  LogInPage.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct LogInPage: View {
    var body: some View {
        Image("acc-person")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
        
        VStack {
            HStack {
                Text("Username: ")
                    .font(.headline)
                    .padding(.leading, 10)
                    .fixedSize()
                    .frame(width: 100, height: 30)
                
                TextField("", text: .constant(""))
                    .padding()
                    .frame(width: 200, height: 40)
                    .background(Color.gray)
                    .cornerRadius(20)
            }
        }
        .padding(.top, 70)
        
        VStack {
            HStack {
                Text("Password: ")
                    .font(.headline)
                    .padding(.leading, 10)
                    .fixedSize()
                    .frame(width: 100, height: 30)
                TextField("", text: .constant(""))
                    .padding()
                    .frame(width: 200, height: 40)
                    .background(Color.gray)
                    .cornerRadius(20)
            }
        }
        .padding(.top, 10)


        Button(action: {}) {
            
            Text("Log in")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .frame(width: 120, height: 40)
                .background(Color.gray)
                .cornerRadius(20)
                .padding(.top, 30)
                .padding(.leading, 155)
        }
       
        NavigationLink(destination: UsernamePage()) {
            Text("Create Account")
                .foregroundColor(.black)
                .fontWeight(.bold)
                .padding(.top, 40)
        }
            
        HStack {
            NavigationLink(destination: PasswordPage()) {
                Text("Forget Password")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding(.top, 40)
            }
        }
            
    }
}

#Preview {
    LogInPage()
}
