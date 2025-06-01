import SwiftUI

struct AppTheme {

    static var lightBackground: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.mint.opacity(0.3), .green.opacity(0.1)]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }

    static var darkBackground: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [
                Color(red: 0.10, green: 0.10, blue: 0.20),
                Color(red: 0.15, green: 0.15, blue: 0.25)
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
    }

    static var lightCard: Color { Color.white }
    static var darkCard: Color { Color(red: 0.16, green: 0.17, blue: 0.25) }
}
