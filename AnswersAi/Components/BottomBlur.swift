//
//  BottomBlur.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct BottomBlur: View {
    let height: CGFloat
    
    var body: some View {
        Rectangle()
            .fill(.ultraThinMaterial)
            .mask(fadeOutGradient)
            .frame(height: height)
    }
    
    private var fadeOutGradient: some View {
        VStack(spacing: 0) {
            LinearGradient(colors: [.black.opacity(0),
                                    .black.opacity(0.383),
                                    .black.opacity(0.707),
                                    .black.opacity(0.924),
                                    .black],
                           
                           startPoint: .top,
                           endPoint: .bottom)
            
            .frame(height: height / 1.75 /*1.25*/)
            
            Rectangle()
        }
    }
    
    init(height: CGFloat = 100) {
        self.height = height
    }
}

#Preview {
    Image(.peopleRunning)
        .resizable()
        .scaledToFit()
        .overlay(alignment: .bottom) { BottomBlur() }
}
