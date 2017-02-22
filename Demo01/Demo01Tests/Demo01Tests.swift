import XCTest
@testable import Demo01

class Demo01Tests: XCTestCase {

    func testxxxx() {
        let hello = Hello()
        let actualResult = hello.sayHi(name: "somkiat")
        XCTAssertEqual("Hello somkiat", actualResult)
    }


}
