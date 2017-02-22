import Foundation

protocol FizzBuzzProtocol {
    func onSucceess(result: String)
}

class FizzBuzzController {

    var fbProtocol: FizzBuzzProtocol?

    func setProtocol(fbProtocol: FizzBuzzProtocol) {
        self.fbProtocol = fbProtocol
    }

    func xxx(number: Int) {
        let fizzBuzz = FizzBuzz()
        let result = fizzBuzz.say(number: number)
        self.fbProtocol?.onSucceess(result: result)
    }

}
