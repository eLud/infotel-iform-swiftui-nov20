//
//  DemoSwiftUIApp.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

@main
struct DemoSwiftUIApp: App {

    @StateObject private var data = AppData()

    var body: some Scene {
        WindowGroup {
            AccountView()
                .environmentObject(data)
        }
    }
}
