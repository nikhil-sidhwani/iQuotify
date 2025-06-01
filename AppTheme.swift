import SwiftUI

struct AppTheme {
    static var lightBackground: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [
                Color(red: 0.92, green: 1.0, blue: 0.95),   // misty mint
                Color(red: 0.80, green: 0.94, blue: 0.85)   // light sage
            ]),
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
