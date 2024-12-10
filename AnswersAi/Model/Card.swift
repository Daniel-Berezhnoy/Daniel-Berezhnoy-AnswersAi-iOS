//
//  Card.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import Foundation

struct Card: Identifiable {
    let id = UUID()
    let banner: CardBanner
    let appDetails: CardAppDetails
}

extension Card {
    static let sampleRunnaCard = Card(banner: .runnaCover, appDetails: .runnaAppDetails)
    static let sampleRoadsCard = Card(banner: .roadsCover, appDetails: .roadsAppDetails)
    static let sampleBudgetwiseCard = Card(banner: .budgetwiseCover, appDetails: .budgetwiseAppDetails)
}
