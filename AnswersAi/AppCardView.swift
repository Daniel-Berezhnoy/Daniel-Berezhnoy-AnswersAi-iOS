//
//  AppCardView.swift
//  AnswersAi
//
//  Created by Daniel Berezhnoy on 12/7/24.
//

import SwiftUI

struct AppCardView: View {
    var category: String = "UTILITIES"
    var title: String = "Figma"
    var appName: String = "Figma"
    var appPublisher: String = "Figma Inc."
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Top Section: Category and Title
            VStack(alignment: .leading, spacing: 4) {
                Text(category.uppercased())
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.8))
                
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.horizontal)
            .padding(.top)
            
            // Main Image Section
            // This is where you display the heart image
            // Assume you have added this image as a SwiftUI Image asset named "heartImage"
            Image("heartImage")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .padding()
            
            // Bottom Section: App Info
            HStack(spacing: 12) {
                Image("figmaIcon")
                    .resizable()
                    .cornerRadius(12)
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading) {
                    Text(appName)
                        .font(.headline)
                    
                    Text(appPublisher)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                // GET button
                Button(action: {
                    // Handle button action here
                }) {
                    Text("GET")
                        .font(.headline)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(16)
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .background(
                Color.white
                    .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
            )
        }
        .background(
            Color.purple
                .cornerRadius(20)
        )
        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
        .padding()
    }
}

// Helper extension to round specific corners if needed
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

// Example preview
struct AppCardView_Previews: PreviewProvider {
    static var previews: some View {
        AppCardView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
