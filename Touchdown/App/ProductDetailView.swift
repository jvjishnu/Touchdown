//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-18.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .compactMap({$0 as? UIWindowScene})
        .first?.windows
        .filter({$0.isKeyWindow}).first
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, keyWindow?.safeAreaInsets.top)
            
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //TOP
            ProductTopDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //BOTTOM
            VStack(alignment: .center, spacing: 0, content: {
                //RATING + SIZES
                RatingSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                //QUANTITY + FAV
                QuantityFavDetailView()
                    .padding(.vertical, 10)
                
                //ADD TO CART
                AddToCartView()
                    .padding(.bottom, 20)
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 812)) {
    ProductDetailView()
        .environmentObject(Shop())
}
