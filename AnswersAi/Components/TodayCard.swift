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
//            appDetails
        }
    }
    
    private var imageBanner: some View {
        Image(.peopleRunning)
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 300)
        
            .overlay(alignment: .bottom) {
                ZStack(alignment: .bottom) {
                    BottomBlur()
                    
                    VStack {
                        Text("Hello")
                        Text("It's Me")
                    }
                    .padding()
                }
            }
    }
    
    private var appDetails: some View {
        Text("App Details")
    }
}

#Preview {
    TodayCard()
}
