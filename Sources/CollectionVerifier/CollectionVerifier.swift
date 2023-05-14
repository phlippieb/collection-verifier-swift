import XCTest

// MARK: - Mixin and object interface

/// A mixin which adds `verify` capability for collections
public protocol CollectionVerifying {}

/// A concrete object with `verify` capability for collections
public struct CollectionVerifier: CollectionVerifying {}

public extension CollectionVerifying {
    /// Helper method for XCTest code to verify a given collection on a per-element basis.
    /// - Parameters:
    ///   - elements: The collection to verify
    ///   - count: A [SizedIndexSet] specifying the number of expected elements
    ///   - file: Used when highlighting test failures
    ///   - line: Used when highlighting test failures
    ///   - verify: The verification block to run on each element; receives the element's index alongside the element itself
    /// Example usage:
    /// ```
    /// class MyTestCase: XCTestCase, CollectionVerifying {
    ///   func testBasicCollection() {
    ///     verify([1, 2], count: _2) { i, e in
    ///       switch i {
    ///       case ._0: XCTAssertEqual(e, 1)
    ///       case ._1: XCTAssertEqual(e, 2)
    ///       }
    ///     }
    ///   }
    /// }
    /// ```
    func verify<C: Collection, I: SizedIndexSet>(
        _ elements: C,
        count: I.Type,
        file: StaticString = #file,
        line: UInt = #line,
        _ verify: (I, C.Element) -> Void
    ) {
        XCTAssertEqual(elements.count, I.allCases.count, file: file, line: line)
        zip(I.allCases, elements).forEach(verify)
    }
}

// MARK: - Sized index set interface

public typealias SizedIndexSet = CaseIterable

public let _2 = __2.self
public let _3 = __3.self
public let _4 = __4.self
public let _5 = __5.self
public let _6 = __6.self
public let _7 = __7.self
public let _8 = __8.self
public let _9 = __9.self
public let _10 = __10.self

// MARK: - Concrete sized index sets

public enum __2: SizedIndexSet {
    case _0, _1
}

public enum __3: SizedIndexSet {
    case _0, _1, _2
}

public enum __4: SizedIndexSet {
    case _0, _1, _2, _3
}

public enum __5: SizedIndexSet {
    case _0, _1, _2, _3, _4
}

public enum __6: SizedIndexSet {
    case _0, _1, _2, _3, _4, _5
}

public enum __7: SizedIndexSet {
    case _0, _1, _2, _3, _4, _5, _6
}

public enum __8: SizedIndexSet {
    case _0, _1, _2, _3, _4, _5, _6, _7
}

public enum __9: SizedIndexSet {
    case _0, _1, _2, _3, _4, _5, _6, _7, _8
}

public enum __10: SizedIndexSet {
    case _0, _1, _2, _3, _4, _5, _6, _7, _8, _9
}
