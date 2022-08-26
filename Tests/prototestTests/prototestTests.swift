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
        
        var author = Author()
        author.firstName = "George"
        author.books.append(book)
        XCTAssertEqual(author.books.count, 1)
        let str = try author.jsonString()
        XCTAssertNotNil(str)
    }
    
    func testStartFlow() {
        var startFlow = StartFlow()
        startFlow.appointmentType = "not real, sorry"
        startFlow.schemaVersion = "1.2.3" //can write to 
        startFlow.scenarioName = "stop-flow, actually"
        
        XCTAssertEqual(startFlow.scenarioName, "stop-flow, actually")
        XCTAssertEqual(startFlow.phoneNumberExists, .verified)
        // default values are set for fields that we don't neccessarly want to have default values for
    }
}
