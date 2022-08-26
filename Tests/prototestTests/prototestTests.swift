import XCTest
@testable import prototest

final class prototestTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var book = Book()
        book.title = "title"
        XCTAssertEqual(book.title, "title")
    }
}
