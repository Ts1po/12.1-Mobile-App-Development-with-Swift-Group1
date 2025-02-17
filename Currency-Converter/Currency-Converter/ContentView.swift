//
//  ContentView.swift
//  Currency-Converter
//
//  Created by George Tsipuria on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Header
        HStack {
            Spacer()
            Text("Currency Converter")
                .font(.system(size: 30))
                .foregroundColor(.primary)
                .padding()
                .fontWeight(.bold)
            
            Spacer()
        }
        // Euro
        HStack {
            Text("Amount in Euro")
                .font(.system(size: 18))
                .padding(.leading, -150)
                .padding(.top, 100)
        }
        VStack {
            TextField("Euro", text: .constant(""))
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1))
                .frame(width: 310, height: 60)
                .padding(.top, 22)
        }
        // Dollar
        HStack {
            Text("Amount in Dollar")
                .font(.system(size: 18))
                .padding(.leading, -150)
                .padding(.top, 133)
        }
        VStack {
            TextField("Dollar", text: .constant(""))
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.gray, lineWidth: 1))
                .frame(width: 310, height: 60)
                .padding(.top, 22)
        }
        // convert button
        VStack {
            Button(action: {}) {
                Text("Convert")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 170, height: 60)
                    .background(Color.blue)
                    .cornerRadius(30)
            }
            .padding(.top, 80)
        }
    }
}

#Preview {
    ContentView()
}
