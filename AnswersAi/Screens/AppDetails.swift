//
//  AppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI
#warning("TabBar")
struct AppDetails: View {
    private let card: Card
    
    var body: some View {
        #warning("ScrollView?")
        VStack(spacing: 0) {
            imageBanner
            appBanner
            Spacer()
            appDescription
        }
        .ignoresSafeArea()
//        .navigationBarBackButtonHidden()
    }
    
    private var imageBanner: some View {
        ZStack(alignment: .bottom) {
            image
            BottomBlur(height: 250)
            adDescription
        }
//        .frame(width: 200, height: 400)
    }
    
    private var image: some View {
        card.banner.coverImage
            .resizable()
            .scaledToFill()
            .frame(height: 400)
//            .clipped()
    }
    
    #warning("Make this wider")
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
            card.appDetails.appIcon
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            // App Name
            VStack(alignment: .leading) {
                Text(card.appDetails.appName)
                    .font(.headline)
                
                Text(card.appDetails.appSubtitle)
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
        Text(card.appDetails.appDescription)
            .padding()
    }
    
    init(for card: Card) {
        self.card = card
    }
}

#Preview {
    AppDetails(for: Card())
}
