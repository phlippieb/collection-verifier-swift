import XCTest
@testable import CollectionVerifier

final class CollectionVerifierTests: XCTestCase, CollectionVerifying {
    func testSimpleUsage() {
        verify([1, 2, 3], count: _3) { index, element in
            switch index {
            case ._0: XCTAssertEqual(element, 1)
            case ._1: XCTAssertEqual(element, 2)
            case ._2: XCTAssertEqual(element, 3)
            }
        }
    }
}
