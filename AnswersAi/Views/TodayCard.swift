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
        VStack {
            imageBanner
            Spacer()
            appBanner
        }
        .background(Color(.systemGray6))
        .clipShape(.rect(cornerRadius: 15))
        
        .padding(.horizontal, 20)
        .padding(.vertical, 6)
        .frame(height: bannerHeight + 95)
    }
    
    private var imageBanner: some View {
        ZStack(alignment: .bottom) {
            image
            BottomBlur(height: 220)
            adDescription
        }
        .frame(width: 200, height: bannerHeight)
    }
    
    private var image: some View {
        card.banner.coverImage
            .resizable()
            .scaledToFill()
            .frame(height: bannerHeight)
            .clipped()
    }
    
    private var adDescription: some View {
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
    }
    
    private var appBanner: some View {
        HStack {
            
            // App Logo
            card.appDetails.icon
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            // App Name
            VStack(alignment: .leading) {
                Text(card.appDetails.name)
                    .font(.headline)
                
                Text(card.appDetails.subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .tint(.primary)
            .padding(.horizontal, 7)
            
            Spacer()
            
            // Get Button
            Button {
                print("Get the App!")
            } label: {
                Text("Get")
                    .padding(.horizontal, 10)
            }
            .font(.headline)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
        }
        .padding(.horizontal)
        .padding(.bottom)
        .padding(.top, 8)
    }
    
    init(for card: Card, imageHeight: CGFloat = 400) {
        self.card = card
        self.bannerHeight = imageHeight
    }
}

#Preview {
    TodayCard(for: Card())
}
