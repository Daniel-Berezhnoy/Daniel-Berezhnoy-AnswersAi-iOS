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
            
            Text("Games")
                .tag("Games")
                .tabItem {
                    Label("Games", systemImage: "gamecontroller")
                        .environment(\.symbolVariants, selectedTab == "Games" ? .fill : .none)
                }
            
            Text("Apps")
                .tag("Apps")
                .tabItem { Label("Apps", systemImage: "square.stack.3d.up") }
            
            Text("Arcade")
                .tag("Arcade")
                .tabItem { Label("Arcade", systemImage: "arcade.stick.and.arrow.left.and.arrow.right.outward") }
                
            
            Text("Search")
                .tag("Search")
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
        }
    }
}

#Preview {
    AATabView()
}
