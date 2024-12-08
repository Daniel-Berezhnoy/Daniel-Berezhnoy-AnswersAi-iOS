//
//  AATabView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct AATabView: View {
//    @State private var selectedTab = "Today"
    @State private var selectedTab = "Apps"
    
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
        NavigationStack {
            ScrollView {
                VStack {
                    image
                    textLabel
                }
            }
            .font(.headline)
            .navigationTitle(screenName)
        }
        .tag(screenName)
        .tabItem { tabLabel }
    }
    
    private var image: some View {
        Image(systemName: sfSymbol)
            .resizable()
            .scaledToFit()
            .foregroundStyle(.blue.gradient)
        
            .frame(width: 125, height: 125)
            .padding(.top, 175)
            .padding(.bottom)
    }
    
    private var textLabel: some View {
        Text(screenName + " Feature ")
        
        +
        
        Text("is coming soon...")
            .fontWeight(.regular)
    }
    
    private var tabLabel: some View {
        Label(screenName, systemImage: sfSymbol)
            .environment(\.symbolVariants, screenName == "Games" ? .none : .fill)
    }
    
    init(named: String, sfSymbol: String) {
        self.screenName = named
        self.sfSymbol = sfSymbol
    }
}
