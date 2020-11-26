//
//  Library.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import Foundation

class Library: ObservableObject {

    @Published private(set) var movies: [Movie]

    init() {
        self.movies = [Movie(title: "Movie1", duration: 90, style: .horror), Movie(title: "Movie2", duration: 120, style: .action)]
    }

    func add(_ movie: Movie) {
        movies.append(movie)
    }

    func remove(_ movie: Movie) {
        //To implement
    }
}
