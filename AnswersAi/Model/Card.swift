//
//  Card.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/8/24.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
}

// MARK: CardCover
// Header
// Title
// Subtitle
// CoverImage

// MARK: CardAppDetails
// AppName
// AppTitle
// AppDescription
// AppIcon

struct CardCover {
    let header: String
    let title: String
    let subtitle: String
    let coverImage: Image
}

struct CardAppDetails {
    let appName: String
    let appSubtitle: String
    let appDescription: String
    let appIcon: Image
}
