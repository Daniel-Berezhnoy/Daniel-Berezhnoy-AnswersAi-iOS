//
//  CardAppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct CardAppDetails {
    let name: String
    let subtitle: String
    let icon: Image
    let description: [Paragraph]
}

extension CardAppDetails {
    static let runnaAppDetails = CardAppDetails(
        name: "Runna",
        subtitle: "RunBuddy",
        icon: Image(.runnaIcon),
        description: [.runnaFirstParagraph, .runnaSecondParagraph, .runnaThirdParagraph]
    )
    
    static let roadsAppDetails = CardAppDetails(
        name: "Roads",
        subtitle: "Scenic GPS Navigation",
        icon: Image(.roadsIcon),
        description: [.roadsFirstParagraph, .roadsSecondParagraph]
    )
    
    static let budgetwiseAppDetails = CardAppDetails(
        name: "BudgetWise",
        subtitle: "Budget Everything",
        icon: Image(.budgetwiseIcon),
        description: [.budgetwiseFirstParagraph, .budgetwiseSecondParagraph]
    )
    
    static let flightyAppDetails = CardAppDetails(
        name: "Flighty",
        subtitle: "Live Flight Tracker",
        icon: Image(.flightyIcon),
        description: [.flightyFirstParagraph, .flightySecondParagraph, .flightyThirdParagraph]
    )
    
    static let what3wordsAppDetails = CardAppDetails(
        name: "what3words",
        subtitle: "Navigation & Maps",
        icon: Image(.what3WordsIcon),
        description: [.what3WordsFirstParagraph, .what3WordsSecondParagraph]
    )
}
