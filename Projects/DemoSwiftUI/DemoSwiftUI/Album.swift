//
//  Album.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 25/11/2020.
//

import Foundation

struct Album {
    var identifier = UUID()
    var name: String
}

extension Album: Identifiable {
    var id: UUID {
        return identifier
    }
}

extension Album: Equatable {} //Permet de vérifier l'égalité

extension Album: Hashable {} //Permet de récupérer une "hashValue", utilse pour utilisation dans Set ou clé dans dictionnaire

extension Album {

    func uppercasedName() -> String {
        return name.uppercased()
    }
}
