//
//  LogoView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-15.
//

import SwiftUI

extension View {
    func headerTextModifier() -> some View {
        self
            .font(.title3)
            .fontWeight(.black)
            .foregroundStyle(.black)
    }
}

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("touch".uppercased())
                .headerTextModifier()
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("down".uppercased())
                .headerTextModifier()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
