//
//  AppData.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import Foundation

class AppData: ObservableObject {

    @Published var userName = "Ludovic"
    @Published var amount: Double = 1000
    @Published var isGoodClient = true

//    func test() {
//        objectWillChange.send()
//    }

}
