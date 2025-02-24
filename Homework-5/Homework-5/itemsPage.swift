//
//  itemsPage.swift
//  Homework-5
//
//  Created by George Tsipuria on 2/24/25.
//

import SwiftUI

struct itemsPage: View {
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
        // first item
        HStack {
            Image("Macbook")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 120)
            VStack(alignment: .leading) {
                Text("MacBook Pro")
                    .font(.headline)
                    .frame(height: 40)
                Text("1299$")
                    .font(.caption)
                    .frame(height: 20)
            }
            .padding(.leading, 20)

            Image("next-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.leading, 30)

            Spacer()
        }
        .padding(.leading, 40)
        
        // second item
        HStack {
            Image("Iphone")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 120)
            VStack(alignment: .leading) {
                Text("MacBook Pro")
                    .font(.headline)
                    .frame(height: 40)
                Text("1299$")
                    .font(.caption)
                    .frame(height: 20)
            }
            .padding(.leading, 20)

            Image("next-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.leading, 30)

            Spacer()
        }
        .padding(.leading, 40)
        
        //Third item
        HStack {
            Image("airpods")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 120)
            VStack(alignment: .leading) {
                Text("MacBook Pro")
                    .font(.headline)
                    .frame(height: 40)
                Text("1299$")
                    .font(.caption)
                    .frame(height: 20)
            }
            .padding(.leading, 20)

            Image("next-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.leading, 30)

            Spacer()
        }
        .padding(.leading, 40)
        
        //Fourth Item
        HStack {
            Image("Imac")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 120)
            VStack(alignment: .leading) {
                Text("MacBook Pro")
                    .font(.headline)
                    .frame(height: 40)
                Text("1299$")
                    .font(.caption)
                    .frame(height: 20)
            }
            .padding(.leading, 20)

            Image("next-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.leading, 30)

            Spacer()
        }
        .padding(.leading, 40)
        
        // Fifth item
        HStack {
            Image("Ipad")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 120)
            VStack(alignment: .leading) {
                Text("MacBook Pro")
                    .font(.headline)
                    .frame(height: 40)
                Text("1299$")
                    .font(.caption)
                    .frame(height: 20)
            }
            .padding(.leading, 20)

            Image("next-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .padding(.leading, 30)

            Spacer()
        }
        .padding(.leading, 40)
    }
}

#Preview {
    itemsPage()
}
