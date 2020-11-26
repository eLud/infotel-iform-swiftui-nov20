//
//  ContentView.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var title: String = ""
    @State private var duration: Float = 90
    @State private var style: Movie.Style = .horror

    @State private var seen = false
    @State private var firstWatchedDate: Date = Date()

    @ObservedObject var library: Library

    var body: some View {
        Form {
            Section {
                TextField("Title", text: $title)
                Picker("Style", selection: $style) {
                    ForEach(Movie.Style.allCases) { style in
                        Text(style.rawValue).tag(style)
                    }
                }
            }
            Section {
                HStack {
                    Text("Duration:")
                    Spacer()
                    Text("\(duration, specifier: "%.0f") min")
                }
                Slider(value: $duration, in: 0...300, step: 1) {
                    Text("Duration")
                }
                Stepper(value: $duration, in: 0...300) {
                    Text("Duration")
                }
            }
            Section {
                Toggle(isOn: $seen, label: {
                    Text("Already watched?")
                })
                if seen {
                    DatePicker("When?", selection: $firstWatchedDate, displayedComponents: .date)
                        .disabled(!seen)
                }
            }
            Section {
                Button("Save", action: createMovie)
                Button(action: createMovie, label: {
                    Label("Save", systemImage: "square.and.arrow.down.fill")
                })
            }
        }.navigationTitle("Add a movie")
    }

    func createMovie() {
        var movie = Movie(title: title, duration: Int(duration), style: style)
        movie.note = 3
        if seen {
            movie.watchedDates.append(firstWatchedDate)
        }

        library.add(movie)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(library: Library())
        }
    }
}
