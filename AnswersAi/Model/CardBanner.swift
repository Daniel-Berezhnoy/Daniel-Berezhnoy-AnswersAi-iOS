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
    
    #warning("Change")
    static let budgetwiseCover = CardBanner(
        header: "Finance",
        title: "Take Control of Your Finances",
        subtitle: "Training plans for your next marathon",
        coverImage: Image(.budgetwiseCover)
    )
}
