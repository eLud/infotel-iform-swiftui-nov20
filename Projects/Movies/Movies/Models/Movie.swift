//
//  Movie.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import Foundation

struct Movie: Identifiable {

    //RawValue : String/Int/Double/Float
    enum Style: String, CaseIterable, Identifiable {
        case horror
        case action
        case western
        case scienceFiction = "SciFi"
        case thriller

        var id: Style {
            return self
        }
    }

    let title: String
    let duration: Int
    let style: Style

    var watchedDates: [Date]
    var watched: Bool {
        return !watchedDates.isEmpty
    }

    var id = UUID()

    @Clamped(initialValue: nil, 0...5.0) var note: Double?

    init(title: String, duration: Int, style: Style) {
        self.title = title
        self.duration = duration
        self.style = style
        self.watchedDates = []
        self.note = nil
    }
}
