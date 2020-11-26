//
//  RatingView.swift
//  Movies
//
//  Created by Ludovic Ollagnier on 26/11/2020.
//

import SwiftUI

struct RatingView: View {

    @State var rating: Int
    let color: Color

    let onImage: Image
    let offImage: Image

    @State var animates = false

    var body: some View {
        HStack {
            ForEach(0..<5) { index in
                image(for: index)
                    .onTapGesture {
                        rating = index + 1
                        animates.toggle()
                    }
                    .foregroundColor(color)
                    .rotationEffect(animates ? Angle(degrees: 45) : Angle(degrees: 0))
                    .animation(
                        Animation.easeInOut(duration: 0.4).repeatForever()
                    )
            }
        }
    }

    func image(for index: Int) -> Image {
        if index < rating {
            return onImage
        } else {
            return offImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 3, color: .red, onImage: Image(systemName: "heart.fill"), offImage: Image(systemName: "heart"))
    }
}
