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
            TodayScreen()
                .tag("Today")
                .tabItem {
                    Label("Today", systemImage: "text.rectangle.page")
                        .environment(\.symbolVariants, .none)
                }
            
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

struct PlaceholderScreen: View {
    
    private let screenName: String
    private let sfSymbol: String
    
    var body: some View {
        Text(screenName)
            .tag(screenName)
            .tabItem {
                Label(screenName, systemImage: sfSymbol)
                    .environment(\.symbolVariants, screenName == "Games" ? .none : .fill)
            }
    }
    
    init(named: String, sfSymbol: String) {
        self.screenName = named
        self.sfSymbol = sfSymbol
    }
}
