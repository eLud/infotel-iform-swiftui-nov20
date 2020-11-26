//
//  Movie.swift
//  ParsingJSON
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import Foundation

//Codable
struct Movie: Codable {
    let movieTitle: String
    let duration: Int

    enum CodingKeys: String, CodingKey {
        case duration = "dmovie"
        case movieTitle
    }
}
