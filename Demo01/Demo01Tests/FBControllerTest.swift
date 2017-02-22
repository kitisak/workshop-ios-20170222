import XCTest
@testable import Demo01

class FBControllerTest: XCTestCase {

    func testCalledOnSuccess() {
        let controller = FizzBuzzController()
        let stub = StubProtocol()
        controller.setProtocol(fbProtocol: stub)

        controller.xxx(number: 1)

        XCTAssertTrue(stub.called)
    }

    class StubProtocol: FizzBuzzProtocol {
        var called = false
        func onSucceess(result: String) {
            self.called = true
        }
    }

}
