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
}
