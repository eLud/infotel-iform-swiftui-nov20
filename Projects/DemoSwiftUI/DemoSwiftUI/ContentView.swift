//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct ContentView: View {

    let name = "Ludovic Ollagnier"
    let country = "France"
    let job = "iOS Dev."

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .foregroundColor(.orange)
                    .frame(width: 150, height: 150)
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title)
                    Text(country)
                        .font(.title2)
                        .foregroundColor(Color.gray)
                    Text(job)
                        .font(.headline)
                        .padding(.top, 15)
                }
            }
            RoundedRectangle(cornerRadius: 25)
                .padding()
                .foregroundColor(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
