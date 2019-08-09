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
  
  func testPerformance() {
    measure {
      _ = search(needle: "", haystack: "matchme")
      _ = search(needle: "ma", haystack: "matchme")
      _ = search(needle: "mtme", haystack: "matchme")
      _ = search(needle: "mtchme", haystack: "matchme")
      _ = search(needle: "matchme", haystack: "matchme")

      _ = search(needle: "matchmematchme", haystack: "matchme")
      _ = search(needle: "matchma", haystack: "matchme")
      _ = search(needle: "🙈", haystack: "matchme")
      _ = search(needle: "matchó", haystack: "matchme")
      _ = search(needle: "emhctam", haystack: "matchme")

      _ = search(needle: "bò", haystack: "bún bò phở gà")
      _ = search(needle: "bò gà", haystack: "bún bò phở gà")
      _ = search(needle: "bò go", haystack: "bún bò phở gà")
    }
  }

    static var allTests = [
        ("testSearch", testSearch),
    ]
}
