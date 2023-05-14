# CollectionVerifier

A helper micro-framework for verifying a collection of items, where the collection has a strict count.

Example usage:

```swift
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
```

In this example, `count: _3` serves two purposes. 
It specifies how many items the collection is expected to contain; the verifier will cause your test to fail if this expectation is not met.
It also determines the indexes that should be handled by the switch inside the verification block; this allows you to switch over all the indices that you expect, without requiring a default case. 
