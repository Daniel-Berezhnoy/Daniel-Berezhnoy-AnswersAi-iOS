//
//  TodayCard.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct TodayCard: View {
    private let bannerHeight: CGFloat = 350
    
    var body: some View {
        VStack {
            imageBanner
            Spacer()
            appDetails
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
        Image(.peopleRunning)
            .resizable()
            .scaledToFill()
            .frame(height: bannerHeight)
            .clipped()
    }
    
    private var adDescription: some View {
        VStack(alignment: .leading) {
            Text("Apps We Love")
                .font(.headline)
                .foregroundStyle(.secondary)
                .textCase(.uppercase)
            
            Text("Hit the Ground Running \nWith Runna")
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(2)
            
            Text("Training plans for your next marathon")
                .font(.callout)
        }
//        .frame(width: 330)
        .padding()
    }
    
    private var appDetails: some View {
        HStack {
            Image(.appIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text("Runna")
                    .font(.headline)
                
                Text("RunBuddy")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 7)
            
            Spacer()
            
            Button {
                // Get the App
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
}

#Preview {
    TodayCard()
}
