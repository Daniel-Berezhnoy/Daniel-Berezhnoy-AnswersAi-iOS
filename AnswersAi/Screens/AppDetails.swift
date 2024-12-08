//
//  AppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct AppDetails: View {
    let card: Card
    
    private let bannerHeight: CGFloat = 400
    
    
    let text = "Reach your pinnacle as a runner with Runna: Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. \n\nEmbark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot."
    
    var body: some View {
        VStack(spacing: 0) {
            imageBanner
            
            appDetails
            Spacer()
            
//            Text(text)
        }
        .ignoresSafeArea()
        
//        .navigationBarBackButtonHidden()
//        .frame(height: bannerHeight + 95)
        
//        .navigationBarBackButtonHidden(viewVisible)
    }
    
    @State private var viewVisible = false
    
    private var imageBanner: some View {
        ZStack(alignment: .bottom) {
            image
            BottomBlur(height: 250)
            adDescription
        }
//        .frame(width: 200, height: bannerHeight)
    }
    
    private var image: some View {
        Image(.peopleRunning)
            .resizable()
            .scaledToFill()
            .frame(height: bannerHeight)
//            .clipped()
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
        .multilineTextAlignment(.leading)
        .tint(.primary)
        .padding()
    }
    
    private var appDetails: some View {
        HStack {
            
            // App Logo
            Image(.appIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            // App Name
            VStack(alignment: .leading) {
                Text("Runna")
                    .font(.headline)
                
                Text("RunBuddy")
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
}

#Preview {
//    NavigationStack {
        AppDetails(card: Card())
//    }
}
