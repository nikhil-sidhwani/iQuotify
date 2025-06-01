import SwiftUI

struct DarkModeToggle: View {
    @Binding var isDarkMode: Bool

    var body: some View {
        Toggle(isOn: $isDarkMode) {
            Label("Dark Mode", systemImage: "moon.fill")
                .foregroundColor(isDarkMode ? .white : .black)
        }
        .padding(.horizontal)
        .padding(.bottom, 30)
        .toggleStyle(SwitchToggleStyle(tint: .blue))
    }
}
