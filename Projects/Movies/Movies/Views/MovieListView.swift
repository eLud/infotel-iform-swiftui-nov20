//
//  MovieListView.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct MovieListView: View {

    @StateObject private var library = Library()
    @State private var showForm  = false

    var body: some View {
        NavigationView {
            List(library.movies) { movie in
                NavigationLink(destination: MoviesDetailsView(viewModel: MovieDetailsViewModel(movie: movie)), label: {
                    HStack {
                        Text(movie.title)
                        Spacer()
                        Text("\(movie.duration)min")
                            .font(.footnote)
                            .foregroundColor(Color.gray)
                    }
                })
            }
            .navigationTitle("List")
            .navigationBarItems(trailing: Button(action: {
                showForm.toggle()
            }, label: {
                Label("Add", systemImage: "plus")
            }))
            .listStyle(InsetGroupedListStyle())
            .sheet(isPresented: $showForm, content: {
                NavigationView {
                    ContentView(library: library)
                }
            })
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
