import XCTest
@testable import Demo01

class FizzBuzzTest: XCTestCase {

    let fizzBuzz = FizzBuzz()

    func testDefault() {
        XCTAssertEqual("1", fizzBuzz.say(number: 1))
        XCTAssertEqual("2", fizzBuzz.say(number: 2))
        XCTAssertEqual("4", fizzBuzz.say(number: 4))
        XCTAssertEqual("7", fizzBuzz.say(number: 7))
        XCTAssertEqual("8", fizzBuzz.say(number: 8))
    }

    func test_should_say_FIZZ() {
        XCTAssertEqual("FIZZ", fizzBuzz.say(number: 3))
        XCTAssertEqual("FIZZ", fizzBuzz.say(number: 6))
        XCTAssertEqual("FIZZ", fizzBuzz.say(number: 9))
    }


    func test5_should_say_BUZZ() {
        XCTAssertEqual("BUZZ", fizzBuzz.say(number: 5))
        XCTAssertEqual("BUZZ", fizzBuzz.say(number: 10))
    }

    func test15_should_say_FIZZBUZZ() {
        XCTAssertEqual("FIZZBUZZ", fizzBuzz.say(number: 15))
        XCTAssertEqual("FIZZBUZZ", fizzBuzz.say(number: 30))
    }

}
