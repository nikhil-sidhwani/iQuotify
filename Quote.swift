import Foundation

struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let author: String
    let category: QuoteCategory
}


enum QuoteCategory: String, CaseIterable, Identifiable {
    case motivation = "Motivation"
    case humor = "Humor"
    case wisdom = "Wisdom"

    var id: String { rawValue }
}
