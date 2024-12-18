//
//  AppInfoBanner.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/9/24.
//

import SwiftUI

struct AppInfoBanner: View {
    private let details: CardAppDetails
    
    @State private var timer: Timer?
    @State private var timeInSeconds = 0
    @State private var showingLoadingSpinner = false
    
    var body: some View {
        HStack {
            appIcon
            appInfo
            Spacer()
            getButton
        }
        .padding()
        .background(Color(.systemGray6))
        .onDisappear { stopTimer() }
    }
    
    private var appIcon: some View {
        details.icon
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .clipShape(.rect(cornerRadius: 12))
    }
    
    private var appInfo: some View {
        VStack(alignment: .leading) {
            Text(details.name)
                .font(.headline)
                .lineLimit(1)
            
            Text(details.subtitle)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                .minimumScaleFactor(0.9)
                .lineLimit(1)
        }
        .tint(.primary)
        .padding(.horizontal, 7)
    }
    
    private var getButton: some View {
        Button {
            timer == nil ? startTimer() : stopTimer()
        } label: {
            dynamicButtonLabel
        }
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
    }
    
    private var dynamicButtonLabel: some View {
        ZStack {
            if showingLoadingSpinner {
                ProgressView()
                    .padding(.vertical, 5)
                
            } else {
                Text("Get")
                    .font(.headline)
                    .padding(.horizontal, 10)
            }
        }
    }
    
    private func startTimer() {
        timeInSeconds = 0
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            timeInSeconds += 1
            if timeInSeconds >= 3 { stopTimer() }
        }
        
        withAnimation { showingLoadingSpinner = true }
    }

    private func stopTimer() {
        timer?.invalidate()
        timer = nil
        
        withAnimation { showingLoadingSpinner = false }
    }
    
    init(with details: CardAppDetails) {
        self.details = details
    }
}

#Preview {
    AppInfoBanner(with: .runnaAppDetails)
}
