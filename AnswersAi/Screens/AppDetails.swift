//
//  AppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct AppDetails: View {
    private let card: Card
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                banner
                appDetails
                appDescription
            }
        }
    }
    
    private var banner: some View {
        ZStack(alignment: .bottom) {
            bannerImage
            BottomBlur(height: 250)
            bannerDescription
        }
        .frame(width: screenWidth)
    }
    
    private var bannerImage: some View {
        card.banner.coverImage
            .resizable()
            .scaledToFill()
            .frame(height: 400)
    }
    
    private var bannerDescription: some View {
        HStack {
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
            .multilineTextAlignment(.leading)
            .tint(.primary)
            .padding()
            
            Spacer()
        }
        .frame(width: screenWidth)
    }
    
    private var appDetails: some View {
        AppInfoBanner(with: card.appDetails)
    }
    
//    private var appDescription: some View {
//        Text(card.appDetails.description)
//            .padding()
//    }
    
    private var appDescription: some View {
        VStack(spacing: 20) {
            VStack {
                Text(card.appDetails.description.firstTitle)
                    .fontWeight(.semibold)
                +
                
                Text(card.appDetails.description.firstParagraph)
                    .foregroundStyle(.secondary)
            }
            
            VStack {
                Text(card.appDetails.description.secondTitle)
                    .fontWeight(.semibold)
                +
                
                Text(card.appDetails.description.secondParagraph)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
    }

    private var screenWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    init(for card: Card) {
        self.card = card
    }
}

#Preview {
    AppDetails(for: Card())
        .ignoresSafeArea(edges: .top)
}
