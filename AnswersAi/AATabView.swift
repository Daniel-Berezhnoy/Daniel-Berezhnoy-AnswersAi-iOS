//
//  AATabView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct AATabView: View {
    @State private var selectedTab = "Today"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            todayScreen
            placeholderScreens
        }
    }
    
    private var todayScreen: some View {
        TodayScreen()
            .tag("Today")
            .tabItem {
                Label("Today", systemImage: "text.rectangle.page")
                    .environment(\.symbolVariants, .none)
            }
    }
    
    private var placeholderScreens: some View {
        Section {
            PlaceholderScreen(named: "Games", sfSymbol: "gamecontroller")
            PlaceholderScreen(named: "Apps", sfSymbol: "square.stack.3d.up")
            PlaceholderScreen(named: "Arcade", sfSymbol: "arcade.stick")
            PlaceholderScreen(named: "Search", sfSymbol: "magnifyingglass")
        }
    }
}

#Preview {
    AATabView()
}
