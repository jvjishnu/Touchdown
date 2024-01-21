//
//  CategoryModel.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-18.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
