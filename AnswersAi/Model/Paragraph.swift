//
//  Paragraph.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/9/24.
//

import Foundation

struct Paragraph: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let body: String
}

extension Paragraph {
    static let runnaFirstParagraph = Paragraph(title: "Reach your pinnacle as a runner with Runna: ",
                                               body: "Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. Embark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot.")
    
    static let runnaSecondParagraph = Paragraph(title: "Reach your pinnacle as a runner with Runna: ",
                                                body: "Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. Embark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion. From beginners embarking on their first park run to seasoned athletes gearing up for challenging marathons, our app is crafted to cater to all. Our offering includes training for 5k, 10k, half-marathons, marathons, and ultra marathons. This is probably why we boast a stellar 4.9/5 rating on Trustpilot.")
    
}
