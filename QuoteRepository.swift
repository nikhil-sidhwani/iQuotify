import Foundation

struct QuoteRepository {
    static let allQuotes: [Quote] = [
        // Motivation
        Quote(text: "The only way to do great work is to love what you do. When you’re passionate about your work, it doesn’t feel like work.", author: "Steve Jobs", category: .motivation),
        Quote(text: "Hardships often prepare ordinary people for an extraordinary destiny. Embrace your journey, even when it gets tough.", author: "C.S. Lewis", category: .motivation),
        Quote(text: "Don’t limit your challenges. Challenge your limits. Every step forward builds strength and confidence.", author: "Jerry Dunn", category: .motivation),
        Quote(text: "Everything you’ve ever wanted is on the other side of fear. Take the leap, the net will appear.", author: "George Addair", category: .motivation),
        Quote(text: "Dream big and dare to fail. The courage to try often matters more than the outcome itself.", author: "Norman Vaughan", category: .motivation),

        // Humor
        Quote(text: "People say nothing is impossible, but I do nothing every day. It’s a talent not everyone appreciates.", author: "A.A. Milne", category: .humor),
        Quote(text: "My fake plants died because I did not pretend to water them. I guess imagination has its limits.", author: "Mitch Hedberg", category: .humor),
        Quote(text: "I used to think I was indecisive, but now I'm not too sure.", author: "Tommy Cooper", category: .humor),
        Quote(text: "I'm not arguing. I'm just explaining why I'm right.", author: "Alan Coren", category: .humor),
        Quote(text: "Why don’t scientists trust atoms? Because they make up everything.", author: "George Carlin", category: .humor),

        // Wisdom
        Quote(text: "In the middle of every difficulty lies opportunity. The obstacle is not in the way — it is the way.", author: "Albert Einstein", category: .wisdom),
        Quote(text: "Turn your wounds into wisdom. Your scars tell a story of strength, not shame.", author: "Oprah Winfrey", category: .wisdom),
        Quote(text: "Knowing yourself is the beginning of all wisdom. Awareness creates space for intentional change.", author: "Aristotle", category: .wisdom),
        Quote(text: "Do not go where the path may lead. Go instead where there is no path and leave a trail worth following.", author: "Ralph Waldo Emerson", category: .wisdom),
        Quote(text: "It is the mark of an educated mind to be able to entertain a thought without accepting it blindly.", author: "Aristotle", category: .wisdom)
    ]
}

