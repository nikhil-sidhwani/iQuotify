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
    }
}
