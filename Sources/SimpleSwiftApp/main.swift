import Foundation

let logic = AppLogic()
let userName = CommandLine.arguments.dropFirst().first ?? "Friend"

print(logic.greeting(for: userName))
print("\nHighlight for today:")
print(logic.featuredQuote())
for (index, feature) in logic.featureHighlights().enumerated() {
    print("\(index + 1). \(feature)")
}
print("\n\(logic.sequenceSummary(limit: 5))")
