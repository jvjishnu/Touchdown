//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-19.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundStyle(.white)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailView()
        .padding()
        .background(Color.gray)
        .environmentObject(Shop())
}
