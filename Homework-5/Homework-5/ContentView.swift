//
//  ContentView.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
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
                .padding()

                VStack {
                    Image("Macbook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 250)
                        .padding()
                    
                    Text("This is Apple product list page. You can see all the products here and get more details on each product’s page.")
                        .frame(width: 350, height: 100)
                        .font(.system(size: 18))
                    
                    Image("Iphone")
                        .resizable()
                        .frame(width: 300, height: 250)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
