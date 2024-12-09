//
//  CardAppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

#warning("Working Here")
struct CardAppDetails {
    let name: String
    let subtitle: String
    let icon: Image
    let description: AppDescription
//    let description: String
//    let description: AttributedString
//    
//    init(name: String, subtitle: String, icon: Image, description: String) {
//        // Split the input string into paragraphs
//        let paragraphs = description.components(separatedBy: "\n")
//        
//        var finalAttributedString = AttributedString()
//        
//        for (index, paragraph) in paragraphs.enumerated() {
//            // Find the earliest punctuation ('.' or ':') to determine sentence boundary
//            let punctuationIndices = [paragraph.firstIndex(of: "."), paragraph.firstIndex(of: ":")].compactMap { $0 }
//            
//            if let earliestPunctuationIndex = punctuationIndices.min() {
//                // Extract the first sentence including the punctuation mark
//                let boldRange = paragraph.startIndex...earliestPunctuationIndex
//                var boldPart = AttributedString(String(paragraph[boldRange]))
//                boldPart.font = .system(.body).bold()
//                finalAttributedString.append(boldPart)
//                
//                // Append the rest of the paragraph if there is any
//                let restStartIndex = paragraph.index(after: earliestPunctuationIndex)
//                if restStartIndex < paragraph.endIndex {
//                    let remainingText = paragraph[restStartIndex...]
//                    finalAttributedString.append(AttributedString(String(remainingText)))
//                }
//            } else {
//                // No punctuation found—just bold the entire paragraph as a fallback
//                var boldPart = AttributedString(paragraph)
//                boldPart.font = .system(.body).bold()
//                finalAttributedString.append(boldPart)
//            }
//            
//            // Add a newline after each paragraph except the last one
//            if index < paragraphs.count - 1 {
//                finalAttributedString.append(AttributedString("\n"))
//            }
//        }
//        
//        self.name = name
//        self.subtitle = subtitle
//        self.icon = icon
//        self.description = finalAttributedString
//    }
}

extension CardAppDetails {
    static let runnaAppDetails = CardAppDetails(
        name: "Runna",
        subtitle: "RunBuddy",
        icon: Image(.appIcon),
        description: .runnaAppDescription
        
//        description: "Reach your pinnacle as a runner with Runna: Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. \n\nEmbark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot."
    )
}

struct AppDescription {
    let firstTitle: String
    let firstParagraph: String
    
    let secondTitle: String
    let secondParagraph: String
}

extension AppDescription {
    static let runnaAppDescription = AppDescription(
        
        firstTitle: "Reach your pinnacle as a runner with Runna: ",
        
        firstParagraph: "Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. Embark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot.",
        
        secondTitle: "Reach your pinnacle with Runna: ",
        
        secondParagraph: "Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. Embark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot."
    )
}
