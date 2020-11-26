//
//  BadgedButton.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct BadgedButton: View {
    var body: some View {
        VStack {
            Button("text") {

            }.padding()
            .font(.subheadline)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 15).foregroundColor(.blue))

            Text("Badged")
                .badged(cornerRadius: 10)

            Image(systemName: "swift").badged()
        }
    }
}

struct BadgedButton_Previews: PreviewProvider {
    static var previews: some View {
        BadgedButton()
    }
}

extension View {

    func badged(cornerRadius: CGFloat = 15) -> some View {
        self.padding()
            .font(.subheadline)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: cornerRadius).foregroundColor(.blue))
    }
}
