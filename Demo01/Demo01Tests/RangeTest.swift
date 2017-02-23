import XCTest
@testable import Demo01

class RangeTest: XCTestCase {

    func testFirstNumber_with_bucket() {
        let range = Range()
        XCTAssertEqual(1, range.getFirst("[1,5]"))
    }

    func testFirstNumber_with_out_bucket() {
        let range = Range()
        XCTAssertEqual(2, range.getFirst("(1,5]"))
    }

    func testEndstNumber_with_bucket() {
        let range = Range()
        XCTAssertEqual(5, range.getEnd("[1,5]"))
    }

    func testEndstNumber_with_out_bucket() {
        let range = Range()
        XCTAssertEqual(4, range.getEnd("[1,5)"))
    }

    func testFirstInput_Should_bucket() {
        let range = Range()
        XCTAssertTrue(range.isStartWithBucket("[1,5]"))
    }

    func testFirstInput_Should_not_bucket() {
        let range = Range()
        XCTAssertFalse(range.isStartWithBucket("(1,5]"))
    }

    func testEndInput_Should_bucket() {
        let range = Range()
        XCTAssertTrue(range.isEndWithBucket("[1,5]"))
    }

    func testEndInput_Should_not_bucket() {
        let range = Range()
        XCTAssertFalse(range.isEndWithBucket("[1,5)"))
    }

    func testcase01() {
        let range = Range()
        XCTAssertEqual("12345", range.of("[1,5]"))
    }



}
