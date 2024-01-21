//
//  SectionView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-18.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGrey.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview(traits: .fixedLayout(width: 120, height: 240)) {
    SectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}
