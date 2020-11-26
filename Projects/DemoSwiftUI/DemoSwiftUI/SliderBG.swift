//
//  SliderBG.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct SliderBG: View {

    @State var redValue: Double = 0

    var body: some View {
        ZStack {
            Color(red: 0.5, green: 0.5, blue: 0.5)
            VStack {
                Text("Hello")
                Spacer()
                Slider(value: $redValue,
                       in: 0...1,
                       minimumValueLabel: Text("0"),
                       maximumValueLabel: Text("255")) {
                    Text("Red")
                }
            }
        }
    }
}

struct SliderBG_Previews: PreviewProvider {
    static var previews: some View {
        SliderBG()
    }
}
