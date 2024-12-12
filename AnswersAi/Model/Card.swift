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
    static let sampleCard = Card(banner: .runnaCover, appDetails: .runnaAppDetails)
}
