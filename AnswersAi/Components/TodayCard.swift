//
//  TodayCard.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct TodayCard: View {
    var body: some View {
        VStack {
            imageBanner
            appDetails
        }
    }
    
    private var imageBanner: some View {
        Image(.peopleRunning)
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 300)
            .overlay(alignment: .bottom) { BottomBlur() }
    }
    
    private var appDetails: some View {
        HStack {
            Image(.appIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text("Utilities")
                Text("Figma")
                Text("Figma Inc.")
            }
            
            Spacer()
            
            Button("Get") {
                
            }
            .font(.headline)
            .textCase(.uppercase)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
        }
        .padding()
    }
}

#Preview {
    TodayCard()
}
