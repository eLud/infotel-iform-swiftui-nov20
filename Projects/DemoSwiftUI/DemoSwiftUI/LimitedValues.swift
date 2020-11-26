//
//  LimitedValues.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import Foundation

@propertyWrapper
struct LimitedValues<Value: Comparable> {

    var value: Value
    var range: ClosedRange<Value>

    var wrappedValue: Value {
        get {
            return value
        }

        set {
            value = min(max(range.lowerBound, newValue), range.upperBound)
        }
    }
}
