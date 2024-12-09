//
//  TodayScreen.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

#warning("Push in when selecting")
struct TodayScreen: View {
    
    @Namespace private var animation
    @State private var cards: [Card] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                cardList
            }
            .navigationTitle("Today")
        }
        .onAppear { for _ in 0 ..< 5 {
            cards.append(Card()) }
        }
    }
    
    private var cardList: some View {
        ForEach(cards) { card in
            NavigationLink {
                AppDetails(for: card)
                    .navigationTransition(.zoom(sourceID: card.id, in: animation))
            } label: {
                TodayCard(for: card)
                    .matchedTransitionSource(id: card.id, in: animation)
            }
//            .shadow(radius: 10)
            
//            .shadow(color: .gray.opacity(0.5), radius: 7, y: 1)
            
            .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.2), radius: 6, y: 1)
        }
    }
}

#Preview {
    TodayScreen()
}
