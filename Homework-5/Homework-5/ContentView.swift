//
//  ContentView.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Apple product list")
                .font(.title)
                .padding(.trailing, 40)
            NavigationLink(destination: LogInPage()) {
                Image("acc-person")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                    
            }
        }
        VStack {
            Image("Macbook")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 250)
                .padding()
            Text("This is apple product list page, you can see all the products here and more information about them in the detail page of each product in the list page itself")
                .frame(width: 350, height: 100)
                .font(.system(size: 18))
            Image("Iphone")
                .resizable()
                .frame(width: 300, height: 250)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
