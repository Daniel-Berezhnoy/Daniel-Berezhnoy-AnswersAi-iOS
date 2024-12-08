//
//  TodayScreen.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

struct CardView: Identifiable {
    let id = UUID()
//    let view: any View
}

struct TodayScreen: View {
    @State private var cardStackNEW: [CardView] = []
    
    var body: some View {
        NavigationStack {
            ScrollView {
                cardStack
            }
            .navigationTitle("Today")
        }
        .onAppear { for _ in 0 ..< 5 { cardStackNEW.append(CardView()) } }
    }
    
    private var cardStack: some View {
        ForEach(cardStackNEW) { card in
            NavigationLink {
                Text("This is a card")
            } label: {
                TodayCard()
            }
        }
    }
}

#Preview {
    TodayScreen()
}
