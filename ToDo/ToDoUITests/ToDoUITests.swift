import XCTest

class ToDoUITests: XCTestCase {

  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    XCUIApplication().launch()
  }

  override func tearDown() {super.tearDown()
  }

  func testExample() {

    let app = XCUIApplication()
    app.navigationBars["ToDo.ItemListView"].buttons["Add"].tap()

    let titleTextField = app.textFields["Title"]
    titleTextField.tap()
    titleTextField.typeText("Training")

    let dateTextField = app.textFields["Date"]
    dateTextField.tap()
    dateTextField.typeText("02/23/2017")

    let locationNameTextField = app.textFields["Location"]
    locationNameTextField.tap()
    locationNameTextField.typeText("BBTV")

    let addressTextField = app.textFields["Address"]
    addressTextField.tap()
    addressTextField.typeText("BBTV New Media")

    let descriptionTextField = app.textFields["Description"]
    descriptionTextField.tap()
    descriptionTextField.typeText("TDD with Swift")
    app.buttons["Save"].tap()
    
    _ = self.expectation(
        for: NSPredicate(format: "self.count = 1"),
        evaluatedWith: XCUIApplication().tables,
        handler: nil)
    self.waitForExpectations(timeout: 5.0, handler: nil)

    XCTAssertTrue(app.tables.staticTexts["Training"].exists)
    XCTAssertTrue(app.tables.staticTexts["02/23/2017"].exists)
    XCTAssertTrue(app.tables.staticTexts["BBTV"].exists)
  }

}
