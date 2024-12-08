//
//  TodayScreen.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

struct TodayScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                cardStack
            }
            .navigationTitle("Today")
        }
    }
    
    private var cardStack: some View {
        ForEach(0 ..< 5) { card in
            NavigationLink {
                Text("This is card #\(card + 1)")
            } label: {
                TodayCard()
            }
        }
    }
}

#Preview {
    TodayScreen()
}
