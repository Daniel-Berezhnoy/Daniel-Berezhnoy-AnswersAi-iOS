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
    static let runnaFirstParagraph = Paragraph(title: "Whether you're an ",
                                                body: "ultramarathoner, a triathlete, or a total beginner, this virtual running coach can help you find your stride— and a supportive community.")
    
    static let runnaSecondParagraph = Paragraph(title: "What we love: ",
                                               body: "The holistic approach of Runna's personalized fitness plans. Get realtime audio tips on pace and gait as you run as well as reminders to rest. When you're not on the move, the app may offer nutrition guidance or suggest cross-training workouts, like strength-building or Pilates.")
    
    static let runnaThirdParagraph = Paragraph(title: "Reach your pinnacle as a runner: ",
                                               body: "Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. Embark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion.")
}
