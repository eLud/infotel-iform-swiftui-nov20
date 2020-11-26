//
//  ListDemo.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import SwiftUI

struct ListDemo: View {

    @State private var userWantsNotifications = false
    @State private var userBirthDate = Date()
    @State private var selection = ""

    var body: some View {
        List {
            Section(header: Text("First Section")) {
                Text("Hello Swift")
            }
            Section(header: Label("Swift", systemImage: "swift")) {
                VStack {
                    Text("Hello")
                    Text("SwiftUI")
                }
                HStack {
                    Text("Swift")
                    Spacer()
                    Image(systemName: "swift")
                        .padding()
                }
                Toggle("User want's notif", isOn: $userWantsNotifications)
                DatePicker("Birth date", selection: $userBirthDate)
                Picker("Options", selection: $selection) {
                    Text("Option 1")
                    Text("Option 2")
                    Text("Option 3")
                }
                HStack {
                    Button("Save") {

                    }
                }
            }
        }
    }
}

struct ListDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListDemo()
        }
    }
}
