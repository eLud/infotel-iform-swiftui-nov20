//
//  DynamicListSectionDemo.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct DynamicListSectionDemo: View {

    @State private var beatles = [Album(name: "Abbey Road"), Album(name: "Yellow Submarine"), Album(name: "Let it be")]
    @State private var eagles = [Album(name: "Hotel California"), Album(name: "Eagles"), Album(name: "Desperado")]

    var body: some View {
        Form {
            Button("New Album") {

            }
            Section(header: Text("Beatles")) {
                ForEach(beatles) { album in
                    Text(album.name)
                }
            }
            Section(header: Text("Eagles")) {
                ForEach(eagles) { album in
                    Text(album.name)
                }
            }
        }
    }
}

struct DynamicListSectionDemo_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListSectionDemo()
    }
}
