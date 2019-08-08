import XCTest

import FuzzyTests

var tests = [XCTestCaseEntry]()
tests += FuzzyTests.allTests()
XCTMain(tests)
