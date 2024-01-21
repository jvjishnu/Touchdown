//
//  QuantityFavDetailView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-20.
//

import SwiftUI

extension View {
    func countChanger(iconName: String) -> some View {
        Button(action: {
            feeback.impactOccurred()
        }, label: {
            Image(systemName: iconName)
        })
    }
}

struct QuantityFavDetailView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                feeback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                feeback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            countChanger(iconName: "heart.circle")
                .foregroundStyle(.pink)
        })
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    QuantityFavDetailView()
        .padding()
}
