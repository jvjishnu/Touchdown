//
//  RatingSizeDetailView.swift
//  Touchdown
//
//  Created by jvijayan on 2024-01-20.
//

import SwiftUI

extension View {
    func titleModifiers() -> some View {
        self
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundStyle(colorGrey)
    }
}

struct RatingSizeDetailView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .titleModifiers()
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGrey.cornerRadius(5))
                                .foregroundStyle(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .titleModifiers()
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundStyle(colorGrey)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGrey, lineWidth: 2)
                                )
                        }
                    }
                })
            })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    RatingSizeDetailView()
        .padding()
}
