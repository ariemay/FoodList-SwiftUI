//
//  Foods.swift
//  SwiftUI-FoodList
//
//  Created by Arie May Wibowo on 28/06/20.
//

import Foundation

struct Foods: Identifiable {
    var id = UUID()
    var name: String
    var isSpicy: Bool = false
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Foods(name: "Nasi Goreng", isSpicy: true),
    Foods(name: "Bakso", isSpicy: true),
    Foods(name: "Iga Bakar", isSpicy: false)
]
