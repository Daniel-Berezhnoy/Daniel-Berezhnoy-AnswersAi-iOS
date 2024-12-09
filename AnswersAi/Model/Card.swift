//
//  Card.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let banner: CardBanner = .mockCover
    let appDetails: CardAppDetails = .mockAppDetails
}

// MARK: CardBanner
struct CardBanner {
    let header: String
    let title: String
    let subtitle: String
    let coverImage: Image
}

extension CardBanner {
    static let mockCover = CardBanner(header: "Answers", title: "AI answers", subtitle: "Your questions, answered", coverImage: Image("answers-ai"))
}

// MARK: CardAppDetails
struct CardAppDetails {
    let appName: String
    let appSubtitle: String
    let appDescription: String
    let appIcon: Image
}

extension CardAppDetails {
    static let mockAppDetails = CardAppDetails(appName: "Answers", appSubtitle: "AI answers", appDescription: "Your questions, answered", appIcon: Image("answers-ai"))
}
