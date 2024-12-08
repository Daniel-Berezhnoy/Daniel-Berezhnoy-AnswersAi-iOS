//
//  AppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI
#warning("Make all the details Card properties")
#warning("TabBar")
struct AppDetails: View {
    let card: Card
    
    let text = "Reach your pinnacle as a runner with Runna: Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. \n\nEmbark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot."
    
    var body: some View {
        
        #warning("ScrollView?")
        VStack(spacing: 0) {
            imageBanner
            appBanner
            Spacer()
            
            Text(text)
                .padding()
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
        Image(.peopleRunning)
            .resizable()
            .scaledToFill()
            .frame(height: 400)
//            .clipped()
    }
    
    #warning("Make this wider")
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
    
    private var appBanner: some View {
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
    AppDetails(card: Card())
}
