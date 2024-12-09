//
//  TodayScreen.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/6/24.
//

import SwiftUI

#warning("Push in when selecting")
#warning("Get Button Animation")
#warning("Test out on all devices")
#warning("Refactor AppInfoBanner")
struct TodayScreen: View {
    @Namespace private var animation
    
    @State private var cards: [Card] = []
    @State private var hideNavigationBar = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                cardList.overlay(geometryReader)
            }
            .navigationTitle(hideNavigationBar ? "" : "Today")
            
            .safeAreaInset(edge: .top) {
                if hideNavigationBar {
                    Text("")
                        .font(.title)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .background(Material.ultraThin)
                }
            }
            
        }
        .onAppear { for _ in 0 ..< 5 {
            cards.append(Card()) }
        }
    }
    
    private var cardList: some View {
        ForEach(cards) { card in
            NavigationLink {
                DismissibleView {
                    AppDetails(for: card)
                        .navigationTransition(.zoom(sourceID: card.id, in: animation))
                }
            } label: {
                TodayCard(for: card)
                    .matchedTransitionSource(id: card.id, in: animation)
            }
            .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.2), radius: 6, y: 1)
        }
    }
    
    private var geometryReader: some View {
        GeometryReader { proxy in
            Color.clear
                .onChange(of: proxy.frame(in: .global).minY) { _, newValue in
                    withAnimation {
                        hideNavigationBar = newValue < -30
                    }
                }
        }
    }
}

#Preview {
    TodayScreen()
}
