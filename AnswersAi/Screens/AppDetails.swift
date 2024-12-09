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
        VStack(spacing: 0) {
            banner
            appDetails
            
            ScrollView {
                appDescription
            }
        }
        .ignoresSafeArea()
    }
    
    private var banner: some View {
        ZStack(alignment: .bottom) {
            bannerImage
            BottomBlur(height: 250)
            bannerDescription
        }
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
        .frame(width: UIScreen.main.bounds.width)
    }
    
    private var appDetails: some View {
        HStack {
            
            // App Icon
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
        .padding()
        .background(Color(.systemGray6))
    }
    
    private var appDescription: some View {
        Text(card.appDetails.description)
            .padding()
    }
    
    init(for card: Card) {
        self.card = card
    }
}

#Preview {
    AppDetails(for: Card())
}
