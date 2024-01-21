//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-19.
//

import SwiftUI

extension View {
    func navImageModifier() -> some View {
        self
            .font(.title)
            .foregroundStyle(.white)
    }
}

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feeback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .navImageModifier()
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .navImageModifier()
            })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetailView()
        .padding()
        .background(Color.gray)
        .environmentObject(Shop())
}
