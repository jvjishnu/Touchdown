//
//  BrandGridView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-18.
//

import SwiftUI

struct BrandGridView: View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BrandGridView()
        .background(colorBackground)
}
