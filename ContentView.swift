import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = QuoteViewModel()
//    @State private var isDarkMode = false
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false


    var body: some View {
        ZStack {
            (isDarkMode ? AppTheme.darkBackground : AppTheme.lightBackground)
                .ignoresSafeArea()

            VStack {
                Text("Daily Quotes")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(isDarkMode ? .white : .black)
                    .padding(.top, 40)


                QuoteCardView(quote: viewModel.currentQuote, isDarkMode: isDarkMode)
                   .frame(height: 300)
                    .padding(.horizontal)

                Spacer(minLength: 30)

                VStack(spacing: 16) {
                    HStack(spacing: 16) {
                        CategoryButton(icon: "flame.fill", label: "Motivate", isDarkMode: isDarkMode) {
                            viewModel.fetchQuote(for: .motivation)
                        }
                        CategoryButton(icon: "lightbulb.fill", label: "Wisdom", isDarkMode: isDarkMode) {
                            viewModel.fetchQuote(for: .wisdom)
                        }
                    }

                    HStack {
                        Spacer()
                        CategoryButton(icon: "face.smiling", label: "Funny", isDarkMode: isDarkMode) {
                            viewModel.fetchQuote(for: .humor)
                        }
                        Spacer()
                    }
                }

                Spacer()

                DarkModeToggle(isDarkMode: $isDarkMode)

            }
        }
    }
}


#Preview {
    ContentView()
}
