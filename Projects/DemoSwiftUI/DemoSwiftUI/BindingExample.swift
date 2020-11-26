//
//  BindingExample.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct BindingExample: View {

    @State private var isPlaying: Bool = false
    var title = "Thriller"

    var body: some View {
        VStack {
            HStack {
                Text(title)
                if isPlaying {
                    Image(systemName: "music.quarternote.3")
                }
            }
            PlayingControls(isPlaying: $isPlaying)
        }
    }
}

struct BindingExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingExample()
    }
}


