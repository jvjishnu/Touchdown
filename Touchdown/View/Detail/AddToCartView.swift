//
//  AddToCartView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-20.
//

import SwiftUI

struct AddToCartView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feeback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            .clipShape(.capsule))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AddToCartView()
        .padding()
        .environmentObject(Shop())
}
