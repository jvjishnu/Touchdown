//
//  Constants.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-14.
//

import SwiftUI

//Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]

//Colours
let colorBackground: Color = Color("ColorBackground")
let colorGrey: Color = Color(UIColor.systemGray4)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

let feeback = UIImpactFeedbackGenerator(style: .medium)
