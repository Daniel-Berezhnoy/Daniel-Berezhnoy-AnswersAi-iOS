//
//  TodayCard.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct TodayCard: View {
    var body: some View {
        ScrollView {
            VStack {
                imageBanner
                Spacer()
                appDetails
            }
            .background(Color(.systemGray5))
            .clipShape(.rect(cornerRadius: 15))
            .padding()
        }
    }
    
    private var imageBanner: some View {
        Image(.peopleRunning)
            .resizable()
            .scaledToFill()
            .overlay(alignment: .bottom) { BottomBlur() }
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
        .padding()
    }
}

#Preview {
    TodayCard()
}
