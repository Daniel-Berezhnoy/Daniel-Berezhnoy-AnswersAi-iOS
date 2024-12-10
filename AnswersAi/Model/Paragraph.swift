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
    
    // MARK: Runna
    static let runnaFirstParagraph = Paragraph(title: "Whether you're an ",
                                               body: "ultramarathoner, a triathlete, or a total beginner, this virtual running coach can help you find your stride— and a supportive community.")
    
    static let runnaSecondParagraph = Paragraph(title: "What we love: ",
                                                body: "The holistic approach of Runna's personalized fitness plans. Get realtime audio tips on pace and gait as you run as well as reminders to rest. When you're not on the move, the app may offer nutrition guidance or suggest cross-training workouts, like strength-building or Pilates.")
    
    static let runnaThirdParagraph = Paragraph(title: "Reach your pinnacle as a runner: ",
                                               body: "Running Training Plans, your quintessential guide to the world of running. With tailored training plans built by world-class coaches and powered by Al to help you achieve your goals. Embark on an unparalleled running journey with Runna. More than just a pocket-sized running coach, Runna is your comprehensive running companion.")
    
    // MARK: Roads
    static let roadsFirstParagraph = Paragraph(title: "With the Roads route planner, ",
                                               body: "you can find the most beautiful route for your next ride. Create a winding and scenic route between two or more locations with just a few clicks. ROADS is provided by Porsche and is available free of charge to anyone who loves driving.")
    
    static let roadsSecondParagraph = Paragraph(title: "What we love: ",
                                                body: "Unlike conventional navigation solutions, Roads focuses on discovering particularly attractive routes. Our unique route intelligence takes into account speed, curves and elevation as well as the real local road and environmental conditions. It also adapts to your individual driving preferences. This works both on in front your own doorstep and almost anywhere in the world.")
    
    // MARK: Budgetwise
    static let budgetwiseFirstParagraph = Paragraph(title: "Budgetwise ",
                                                    body: "is an AI-powered personal finance app that simplifies money management using a unique combination of AI, community, and a smooth user experience. Take control of your finances and achieve financial success effortlessly. Budget. Save. Live!")
    
    static let budgetwiseSecondParagraph = Paragraph(title: "What we love: ",
                                                     body: "Budgetwise is unique, not just because of the simplicity of its user-interface, but also because it has a community of users that can help one another towards healthy financial habits and financial freedom. Unlike other apps, we don’t inundate you with ads or financial services or premium options. We truly put the user first. We can also sync with the budget on your Google-spreadsheets if you aren't quite ready to let go off of that style of budgeting.")
}
