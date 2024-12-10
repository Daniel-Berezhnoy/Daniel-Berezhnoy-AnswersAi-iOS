//
//  CardBanner.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct CardBanner {
    let header: String
    let title: String
    let subtitle: String
    let coverImage: Image
}

extension CardBanner {
    static let runnaCover = CardBanner(
        header: "Apps We Love",
        title: "Hit the Ground Running With Runna",
        subtitle: "Training plans for your next marathon",
        coverImage: Image(.runnaCover)
    )
    
    static let roadsCover = CardBanner(
        header: "Travel",
        title: "Plan Your Road Trip",
        subtitle: "Perfect app for driving enthusiasts",
        coverImage: Image(.roadsCover)
    )
    
    static let budgetwiseCover = CardBanner(
        header: "Finance",
        title: "Take Control of Your Budget",
        subtitle: "Simplifying finances, one tap at a time",
        coverImage: Image(.budgetwiseCover)
    )
    
    static let flightyCover = CardBanner(
        header: "Travel Essentials",
        title: "World's Fastest Delay Alerts",
        subtitle: "Don't Fly Without This App",
        coverImage: Image(.flightyCover)
    )
}
