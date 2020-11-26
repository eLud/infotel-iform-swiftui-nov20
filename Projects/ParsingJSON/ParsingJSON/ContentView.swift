//
//  ContentView.swift
//  ParsingJSON
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import SwiftUI
import SwiftyJSON
import MapKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Button("Encode") {
                    demoJson()
                }
                NavigationLink(destination: WebView(url: URL(string: "https://www.apple.com")!),
                               label: {
                                Text("Navigate")
                               })
            }
        }
    }

    func demoJson() {
        let movies = [Movie(movieTitle: "Title1", duration: 90), Movie(movieTitle: "Title2", duration: 100)]

        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase

        if let data = try? encoder.encode(movies),
           let jsonString = String(data: data, encoding: .utf8) {
            print(jsonString)

            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase

            let movies = try? decoder.decode([Movie].self, from: data)
            print(movies!)
        }

//            do {
//                let data = try encoder.encode(movies)
//            } catch {
//                print(error)
//            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
