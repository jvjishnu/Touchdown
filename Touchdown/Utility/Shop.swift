//
//  Shop.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-20.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? //= nil
}
