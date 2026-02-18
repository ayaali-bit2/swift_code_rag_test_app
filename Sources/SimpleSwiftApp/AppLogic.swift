import Foundation

struct AppLogic {
    private let quotes = [
        "The best way to predict the future is to invent it.",
        "Code is like humor. When you have to explain it, it’s bad.",
        "Simplicity is the soul of efficiency."
    ]

    private let features = [
        "Friendly console output",
        "Deterministic core logic",
        "Cross-platform Swift package"
    ]

    func greeting(for name: String) -> String {
        "Hello, \(name)! Welcome to the Simple Swift App."
    }

    func featuredQuote() -> String {
        quotes.first.map { "“\($0)”" } ?? "Keep exploring Swift."
    }

    func featureHighlights() -> [String] {
        features
    }

    func sequenceSummary(limit: Int) -> String {
        let safeLimit = max(limit, 1)
        let numbers = (1...safeLimit).map(String.init)
        return "Numbers: \(numbers.joined(separator: " • "))"
    }
}
