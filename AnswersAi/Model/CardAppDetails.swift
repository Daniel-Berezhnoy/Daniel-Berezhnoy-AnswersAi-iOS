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
        icon: Image(.appIcon),
        description: [.runnaFirstParagraph, .runnaSecondParagraph, .runnaThirdParagraph]
    )
}
