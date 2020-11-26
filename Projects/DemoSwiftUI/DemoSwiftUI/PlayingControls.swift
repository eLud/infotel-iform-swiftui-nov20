//
//  PlayingControls.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct PlayingControls: View {

    @Binding var isPlaying: Bool

    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "backward.end.fill")
            })
            Button(action: {
                isPlaying.toggle()
            }, label: {
                Image(systemName: isPlaying ? "pause.fill" : "play.fill")
            })
            Button(action: {}, label: {
                Image(systemName: "forward.end.fill")
            })
        }.padding()
        .border(Color.black, width: 1)
    }
}

struct PlayingControls_Previews: PreviewProvider {
    static var previews: some View {
        PlayingControls(isPlaying: .constant(false))
    }
}
