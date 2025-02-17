//
//  ContentView.swift
//  Currency-Converter
//
//  Created by George Tsipuria on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    @State private var euroAmount: String = ""
    @State private var usdAmount: String = ""
    var body: some View {
        // Header
        HStack {
            Image("Bank-icon")
                .padding(.leading, 30)
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
                .foregroundColor(.black)
        }
        
        HStack() {
            Image("Euro-icon")
                .resizable()
                .frame(width: 60, height: 55)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.leading, 10)
            
            TextField("Euro", text: $euroAmount)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color("Border-color"), lineWidth: 1))
                .frame(width: 250, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        // Dollar
        HStack {
            Text("Amount in Dollar")
                .font(.system(size: 18))
                .padding(.leading, -150)
                .padding(.top, 133)
                .foregroundColor(.black)
        }

        HStack() {
            Image("Dollar-Icon")
                .resizable()
                .frame(width: 60, height: 55)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.leading, 10)
            
            TextField("Dollar", text: $usdAmount)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color("Border-color"), lineWidth: 1))
                .frame(width: 250, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }

        // convert button
        VStack {
            Button(action: {
                if let euro = Double(euroAmount) {
                    usdAmount = String(converEuroToUsf(euro: euro))
                } else if let usd = Double(usdAmount) {
                    euroAmount = String(convertUsfToEuro(usf: usd))
                }
            }) {
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


// convert functions
func converEuroToUsf(euro: Double) -> Double {
    return euro * 1.10
}

func convertUsfToEuro(usf: Double) -> Double {
    return usf / 1.10
}
