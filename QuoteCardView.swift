//
//  QuoteCardView.swift
//  Daily Quotes
//
//  Created by Nikhil on 31/05/25.
//


import SwiftUI

struct QuoteCardView: View {
    let quote: Quote
    let isDarkMode: Bool

    var body: some View {
        VStack(spacing: 12) {
            Text("“\(quote.text)”")
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(isDarkMode ? .white : .black)

            Text("– \(quote.author)")
                .font(.subheadline)
                .foregroundColor(isDarkMode ? .gray : .secondary)
        }
        .padding()
        .background(isDarkMode ? AppTheme.darkCard : AppTheme.lightCard)
        .cornerRadius(20)
//        .shadow(color: .black.opacity(0.15), radius: 8, x: 0, y: 4)
    }
}
