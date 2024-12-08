//
//  TodayCard.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct TodayCard: View {
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
        
        .frame(height: 400)
    }
    
//    private var imageBanner: some View {
//        VStack {
//            Image(.peopleRunning)
//                .resizable()
//                .scaledToFit()
//                .overlay(alignment: .bottom) { BottomBlur() }
//            
//            Spacer()
//            
//        }
//        .frame(height: 290)
//    }
    
//    private var imageBanner: some View {
//        VStack {
//            ZStack {
////                Color.clear
//                
//                Image(.peopleRunning)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height: 200)
//                    .clipped()
//                
//                    .overlay(alignment: .bottom) { BottomBlur() }
//            }
//            .frame(height: 300)
//            
////            Spacer()
//        }
//    }
    
    private var imageBanner: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(.peopleRunning)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 500)
                    .clipped()
                    .overlay(alignment: .bottom) { BottomBlur(height: 220) }
                
                adDescription
            }
            .frame(width: 100, height: 500)
        }
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
//                .frame(width: 330)
        .padding()
        
//                .background {
//                    Color.red
//                }
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
