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
                cardStack
            }
            .navigationTitle("Today")
        }
        .onAppear { for card in 0 ..< 5 {
            cardArray.append(CardView(number: card)) }
        }
    }
    
    private var cardStack: some View {
        ForEach(cardArray) { card in
            NavigationLink {
                Text("This is a card \(card.number + 1)")
                    .navigationTransition(.zoom(sourceID: card.id, in: animation))
            } label: {
                TodayCard()
                    .matchedTransitionSource(id: card.id, in: animation)
            }
        }
    }
}

#Preview {
    TodayScreen()
}

struct Card: Identifiable {
    let id = UUID()
    let number: Int
}
