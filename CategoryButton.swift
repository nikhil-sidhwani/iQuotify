import SwiftUI

struct CategoryButton: View {
    let icon: String
    let label: String
    let isDarkMode: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 6) {
                Image(systemName: icon)
                    .font(.title2)
                Text(label)
                    .font(.footnote)
                    .bold()
            }
            .foregroundColor(.white)
            .frame(width: 130, height: 70)
            .background(isDarkMode ? Color.purple : Color.teal)
            .cornerRadius(16)
//            .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 3)
        }
        .buttonStyle(.plain)
    }
}
