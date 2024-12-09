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
            
            // App Icon
            details.icon
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            // App Name
            VStack(alignment: .leading) {
                Text(details.name)
                    .font(.headline)
                
                Text(details.subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .tint(.primary)
            .padding(.horizontal, 7)
            
            Spacer()
            
            // Get Button
            Button {
                withAnimation {
                    getAppPressed.toggle()
                }
                
            } label: {
                
                if getAppPressed {
                    Image(systemName: "checkmark")
                } else {
                    Text("Get")
                        .padding(.horizontal, 10)
                }
                
                
            }
            .font(.headline)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
        }
        .padding()
        .background(Color(.systemGray6))
    }
    
    init(with details: CardAppDetails) {
        self.details = details
    }
}

#Preview {
    AppInfoBanner(with: .runnaAppDetails)
}
