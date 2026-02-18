import XCTest
@testable import SimpleSwiftApp

final class SimpleSwiftAppTests: XCTestCase {
    func testGreetingIncludesName() {
        let logic = AppLogic()
        let result = logic.greeting(for: "Tester")
        XCTAssertEqual(result, "Hello, Tester! Welcome to the Simple Swift App.")
    }

    func testFeaturedQuoteReturnsKnownQuote() {
        let logic = AppLogic()
        let result = logic.featuredQuote()
        XCTAssertTrue(result.contains("“"))
        XCTAssertFalse(result.isEmpty)
    }

    func testFeatureHighlightsContainExpectedItems() {
        let logic = AppLogic()
        let highlights = logic.featureHighlights()
        XCTAssertEqual(highlights.count, 3)
        XCTAssertTrue(highlights.contains("Friendly console output"))
    }

    func testSequenceSummaryLimitsNumbers() {
        let logic = AppLogic()
        let summary = logic.sequenceSummary(limit: 4)
        XCTAssertEqual(summary, "Numbers: 1 • 2 • 3 • 4")
    }
}
