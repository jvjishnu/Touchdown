//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-15.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: Player

    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
