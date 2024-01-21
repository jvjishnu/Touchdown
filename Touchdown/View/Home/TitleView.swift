//
//  TitleView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-18.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TitleView(title: "Helmet")
        .background(colorBackground)
}
