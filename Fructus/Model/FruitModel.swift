//
//  FruitModel.swift
//  Fructus
//
//  Created by Abdul Maalik on 02/09/23.
//

import SwiftUI


struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
