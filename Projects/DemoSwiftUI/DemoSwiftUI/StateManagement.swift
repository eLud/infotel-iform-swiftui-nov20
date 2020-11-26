//
//  StateManagement.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct StateManagement: View {

    @State private var amount: Float = 1000
    @State private var userName = "Ludovic"

    var body: some View {
        VStack {
            VStack {
                Text("Solde disponible : \(amount)€")
                HStack {
                    Button("Gain") {
                        // Code de l'action
                        amount += 100
                    }
                    Button(action: {
                        // Code de l'action
                        amount -= 100
                    }, label: {
                        Text("Perte")
                    })
                }
            }
            ProgressView(value: amount, total: 3000)
            Slider(value: $amount, in: 0...3000)
            TextField("User name", text: $userName)
            Text(userName)
        }
    }
}

struct StateManagement_Previews: PreviewProvider {
    static var previews: some View {
        StateManagement()
    }
}
