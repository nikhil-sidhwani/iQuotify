//
//  QuoteViewModel.swift
//  Daily Quotes
//
//  Created by Nikhil on 31/05/25.
//


import Foundation
import Combine

class QuoteViewModel: ObservableObject {
    @Published var currentQuote: Quote
    private var cancellable: AnyCancellable?
    private let quotes = QuoteRepository.allQuotes

    init() {
        self.currentQuote = quotes.randomElement()!
        startTimer()
    }

    func fetchQuote(for category: QuoteCategory) {
        if let quote = quotes.filter({ $0.category == category }).randomElement() {
            currentQuote = quote
        }
    }

    private func startTimer() {
        cancellable = Timer.publish(every: 60, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.currentQuote = self?.quotes.randomElement() ?? self!.currentQuote
            }
    }

    deinit {
        cancellable?.cancel()
    }
}
