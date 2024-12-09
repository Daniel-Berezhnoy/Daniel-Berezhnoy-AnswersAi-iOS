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
    static let runnaCard = Card(banner: .runnaCover, appDetails: .runnaAppDetails)
//    static let budgetwiseCard = Card(banner: .budgetwiseCover, appDetails: .runnaAppDetails)
}
