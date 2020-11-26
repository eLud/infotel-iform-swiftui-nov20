//
//  AccountView.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 24/11/2020.
//

import SwiftUI

struct AccountView: View {

    @EnvironmentObject var data: AppData
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    var body: some View {
        VStack {
            VStack {
                Text("Solde disponible : \(data.amount)€")
                HStack {
                    Button("Gain") {
                        // Code de l'action
                        data.amount += 100
                    }
                    Button(action: {
                        // Code de l'action
                        data.amount -= 100
                    }, label: {
                        Text("Perte")
                    })
                }
            }
//            AccountProgress(data: data)
            AccountProgressEnv()

            if colorScheme == .dark {
                Circle()
                    .foregroundColor(.white)
            } else {
                Circle()
                    .foregroundColor(.black)
            }
        }
    }
}

struct AccountProgress: View {

    @ObservedObject var data: AppData

    var body: some View {
        VStack {
            ProgressView(value: data.amount, total: 3000)
            Text(data.userName)
            Slider(value: $data.amount, in: 0...3000)
        }
    }
}

struct AccountProgressEnv: View {

    @EnvironmentObject var data: AppData

    var body: some View {
        VStack {
            ProgressView(value: data.amount, total: 3000)
            Text(data.userName)
            Slider(value: $data.amount, in: 0...3000)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AccountView()
                .environmentObject(AppData())
            AccountView()
                .preferredColorScheme(.dark)
                .environmentObject(AppData())
        }
    }
}
