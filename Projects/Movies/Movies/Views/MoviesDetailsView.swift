//
//  MoviesDetailsView.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct MoviesDetailsView: View {

    var viewModel: MovieDetailsViewModel

    var body: some View {
        VStack {
            Text(viewModel.movie.title)
                .navigationTitle(viewModel.movie.title)
            if let note = viewModel.movie.note {
                RatingView(rating: Int(note), color: .yellow, onImage: Image(systemName: "star.fill"), offImage: Image(systemName: "star"))

            }
            viewModel.styleImage
        }
    }
}

struct MoviesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailsView(viewModel: MovieDetailsViewModel(movie: Movie(title: "Movie1", duration: 90, style: .action)))
    }
}
