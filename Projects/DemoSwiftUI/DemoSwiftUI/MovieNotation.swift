//
//  MovieNotation.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct MovieNotation: View {

    @LimitedValues(value: 0, range: 0...5) var note: Int

    var body: some View {
        VStack {
            Text("\(note)")
            Button("Increase") {
                
            }
        }
    }
}

struct MovieNotation_Previews: PreviewProvider {
    static var previews: some View {
        MovieNotation()
    }
}
