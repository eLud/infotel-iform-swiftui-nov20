//
//  Clamped.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import Foundation

@propertyWrapper
struct Clamped {
    var value: Double?
    let range: ClosedRange<Double>

    init(initialValue value: Double?, _ range: ClosedRange<Double>) {
        self.value = value
        self.range = range
    }

    var wrappedValue: Double? {
        get { value }
        set {
            guard let newValue = newValue else {
                value = nil
                return
            }
            value = min(max(range.lowerBound, newValue), range.upperBound)
        }
    }
}
