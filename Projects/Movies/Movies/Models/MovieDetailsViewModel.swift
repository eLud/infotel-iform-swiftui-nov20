//
//  MovieDetailsViewModel.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import SwiftUI

struct MovieDetailsViewModel {

    var movie: Movie

    var styleImage: Image {
        switch movie.style {
        case .horror:
            return Image(systemName:"ant")
        case .action:
            return Image(systemName:"bolt.car")
        case .western:
            return Image(systemName:"eyes")
        case .scienceFiction:
            return Image(systemName:"pills")
        case .thriller:
            return Image(systemName:"bandage")
        }
    }
}
