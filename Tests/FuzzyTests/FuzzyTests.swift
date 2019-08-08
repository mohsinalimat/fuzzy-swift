import XCTest
@testable import Fuzzy

final class FuzzyTests: XCTestCase {
    func testSearch() {
      XCTAssertEqual(search(needle: "", haystack: "matchme"), true)
      XCTAssertEqual(search(needle: "ma", haystack: "matchme"), true)
      XCTAssertEqual(search(needle: "mtme", haystack: "matchme"), true)
      XCTAssertEqual(search(needle: "mtchme", haystack: "matchme"), true)
      XCTAssertEqual(search(needle: "matchme", haystack: "matchme"), true)
      
      XCTAssertEqual(search(needle: "matchmematchme", haystack: "matchme"), false)
      XCTAssertEqual(search(needle: "matchma", haystack: "matchme"), false)
      XCTAssertEqual(search(needle: "🙈", haystack: "matchme"), false)
      XCTAssertEqual(search(needle: "matchó", haystack: "matchme"), false)
      XCTAssertEqual(search(needle: "emhctam", haystack: "matchme"), false)
      
      XCTAssertEqual(search(needle: "bò", haystack: "bún bò phở gà"), true)
      XCTAssertEqual(search(needle: "bò gà", haystack: "bún bò phở gà"), true)
      XCTAssertEqual(search(needle: "bò go", haystack: "bún bò phở gà"), false)
    }

    static var allTests = [
        ("testSearch", testSearch),
    ]
}
