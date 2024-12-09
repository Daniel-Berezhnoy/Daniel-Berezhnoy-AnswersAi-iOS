//
//  CardAppDetails.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct CardAppDetails {
    let appName: String
    let appSubtitle: String
    let appDescription: String
    let appIcon: Image
}

extension CardAppDetails {
    static let runnaAppDetails = CardAppDetails(
        appName: "Runna",
        appSubtitle: "RunBuddy",
        appDescription: "Reach your pinnacle as a runner with Runna: Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. \n\nEmbark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot.",
        appIcon: Image(.appIcon)
    )
}
