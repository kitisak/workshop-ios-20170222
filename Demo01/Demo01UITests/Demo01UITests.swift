import XCTest

class Demo01UITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
   }

    override func tearDown() {
        super.tearDown()
    }

    func testDefault() {
        let app = XCUIApplication()
        let numbertfTextField = app.textFields["numberTF"]
        numbertfTextField.tap()
        numbertfTextField.typeText("1")

        app.buttons["sayBTN"].tap()

        var result = app.staticTexts["resultLB"]
        XCTAssertEqual("1", result.label)

        numbertfTextField.clearAndEnterText(text: "2")

        app.buttons["sayBTN"].tap()

        result = app.staticTexts["resultLB"]
        XCTAssertEqual("2", result.label)
    }

    func testFizz() {
        let app = XCUIApplication()
        let numbertfTextField = app.textFields["numberTF"]
        numbertfTextField.tap()
        numbertfTextField.typeText("3")

        app.buttons["sayBTN"].tap()

        let result = app.staticTexts["resultLB"]
        XCTAssertEqual("FIZZ", result.label)
    }

    func testBuzz() {
        let app = XCUIApplication()
        let numbertfTextField = app.textFields["numberTF"]
        numbertfTextField.tap()
        numbertfTextField.typeText("10")

        app.buttons["sayBTN"].tap()

        let result = app.staticTexts["resultLB"]
        XCTAssertEqual("BUZZ", result.label)
    }

    func testFizzBuzz() {
        let app = XCUIApplication()
        let numbertfTextField = app.textFields["numberTF"]
        numbertfTextField.tap()
        numbertfTextField.typeText("15")

        app.buttons["sayBTN"].tap()

        let result = app.staticTexts["resultLB"]
        XCTAssertEqual("FIZZBUZZ", result.label)
    }


}

extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    func clearAndEnterText(text: String) -> Void {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }

        self.tap()

        let deleteString = stringValue.characters.map { _ in XCUIKeyboardKeyDelete }
            .joined(separator: "")

        self.typeText(deleteString)
        self.typeText(text)
    }
}
