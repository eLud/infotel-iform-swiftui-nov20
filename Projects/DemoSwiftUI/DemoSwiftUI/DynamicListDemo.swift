//
//  DynamicListDemo.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct DynamicListDemo: View {

    @State private var data = [Album(name: "Abbey Road"), Album(name: "Yellow Submarine"), Album(name: "Let it be")]

    var body: some View {
        List(data) { album in
            Text(album.uppercasedName())
        }
    }
}

struct DynamicListDemo_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListDemo()
    }
}

