import Foundation

class QuoteViewModel: ObservableObject {
    @Published var currentQuote: Quote
    private let quotes = QuoteRepository.allQuotes
    private var timer: Timer?

    init() {
        self.currentQuote = quotes.randomElement() ?? Quote(text: "No quotes available", author: "System", category: .motivation)
        startTimer()
    }

    func fetchQuote(for category: QuoteCategory) {
        let filtered = quotes.filter { $0.category == category }
        if let newQuote = filtered.randomElement() {
            currentQuote = newQuote
        }
    }

    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) { timer in
            if let randomQuote = self.quotes.randomElement() {
                self.currentQuote = randomQuote
            }
        }
    }

    deinit {
        timer?.invalidate()
    }
}
