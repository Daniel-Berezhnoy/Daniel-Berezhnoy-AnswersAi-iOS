//
//  TodayScreen.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

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
        }
    }
}

#Preview {
    TodayScreen()
}
