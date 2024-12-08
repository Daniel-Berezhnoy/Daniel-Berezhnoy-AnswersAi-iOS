//
//  PlaceholderScreen.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct PlaceholderScreen: View {
    @State private var rotation: Double = 0
    
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
        
            .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 0, z: 0))
            .onTapGesture { withAnimation(.bouncy) { rotation += 360 } }
        
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

#Preview {
    PlaceholderScreen(named: "Swift", sfSymbol: "swift")
}
