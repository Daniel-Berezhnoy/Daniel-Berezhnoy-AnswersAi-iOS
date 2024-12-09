//
//  AppInfoBanner.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/9/24.
//

import SwiftUI

struct AppInfoBanner: View {
    
    @State private var getAppPressed = false
    private let details: CardAppDetails
    
    var body: some View {
        HStack {
            appIcon
            appInfo
            Spacer()
            getButton
        }
        .padding()
        .background(Color(.systemGray6))
    }
    
    private var appIcon: some View {
        details.icon
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
    }
    
    private var appInfo: some View {
        VStack(alignment: .leading) {
            Text(details.name)
                .font(.headline)
            
            Text(details.subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .tint(.primary)
        .padding(.horizontal, 7)
    }
    
    private var getButton: some View {
        Button {
            withAnimation { getAppPressed.toggle() }
        } label: {
            dynamicButtonLabel
        }
        .font(.headline)
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
    }
    
    private var dynamicButtonLabel: some View {
        ZStack {
            if getAppPressed {
                ProgressView()
                    .padding(.vertical, 5)
                
            } else {
                Text("Get")
                    .padding(.horizontal, 10)
            }
        }
    }
    
    init(with details: CardAppDetails) {
        self.details = details
    }
}

#Preview {
    AppInfoBanner(with: .runnaAppDetails)
}
