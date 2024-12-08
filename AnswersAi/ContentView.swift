//
//  ContentView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ForEach(0 ..< 5) { card in
                TodayCard()
            }
        }
    }
}

#Preview {
    ContentView()
}
