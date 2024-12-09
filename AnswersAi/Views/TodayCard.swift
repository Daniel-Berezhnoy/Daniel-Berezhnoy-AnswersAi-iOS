//
//  TodayCard.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct TodayCard: View {
    
    private let card: Card
    private let bannerHeight: CGFloat
    
    var body: some View {
        VStack(spacing: 0) {
            banner
            appDetails
        }
        .background(Color(.systemGray6))
        .clipShape(.rect(cornerRadius: 15))
        .frame(height: bannerHeight + 95)
        
        .padding(.horizontal, 25)
        .padding(.vertical, 6)
    }
    
    private var banner: some View {
        ZStack(alignment: .bottom) {
            bannerImage
            BottomBlur(height: 220)
            bannerDescription
        }
        .frame(width: 200, height: bannerHeight)
    }
    
    private var bannerImage: some View {
        card.banner.coverImage
            .resizable()
            .scaledToFill()
            .frame(height: bannerHeight)
            .clipped()
    }
    
    private var bannerDescription: some View {
        VStack(alignment: .leading) {
            Text(card.banner.header)
                .font(.headline)
                .foregroundStyle(.secondary)
                .textCase(.uppercase)
            
            Text(card.banner.title)
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(2)
            
            Text(card.banner.subtitle)
                .font(.callout)
        }
        .frame(width: UIScreen.main.bounds.width)
        .multilineTextAlignment(.leading)
        .tint(.primary)
        .padding()
    }
    
    private var appDetails: some View {
        AppInfoBanner(with: card.appDetails)
    }
    
    init(for card: Card, imageHeight: CGFloat = 400) {
        self.card = card
        self.bannerHeight = imageHeight
    }
}

#Preview {
    TodayCard(for: Card())
}
