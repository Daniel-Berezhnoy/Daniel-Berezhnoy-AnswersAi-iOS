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
        .padding(.vertical, 2)
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
            .frame(width: screenWidth, height: bannerHeight)
            .clipped()
    }
    
    private var bannerDescription: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(card.banner.header)
                    .font(.headline)
                    .foregroundStyle(.secondary)
                    .textCase(.uppercase)
                    .lineLimit(1)
                
                Text(card.banner.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                
                Text(card.banner.subtitle)
                    .font(.callout)
            }
            
            Spacer()
        }
        .frame(width: screenWidth - 100)
        .multilineTextAlignment(.leading)
        .tint(.primary)
        .padding()
    }
    
    private var appDetails: some View {
        AppInfoBanner(with: card.appDetails)
    }
    
    private var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    init(for card: Card, imageHeight: CGFloat = 400) {
        self.card = card
        self.bannerHeight = imageHeight
    }
}

#Preview {
    TodayCard(for: .sampleRoadsCard)
}
