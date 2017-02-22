import Foundation

class FizzBuzz {
    func say(number: Int) -> String {
        if isFizzBuzz(number) {
            return "FIZZBUZZ"
        }
        if isFizz(number) {
            return "FIZZ"
        }
        if isBuzz(number) {
            return "BUZZ"
        }
        return String(number)
    }

    private func isFizzBuzz(_ number: Int) -> Bool {
        return number%15 == 0
    }

    private func isFizz(_ number: Int) -> Bool {
        return number%3 == 0
    }

    private func isBuzz(_ number: Int) -> Bool {
        return number%5 == 0
    }
}
