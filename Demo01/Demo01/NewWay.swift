import Foundation

protocol MyComponent {
    func isDiv(_ number: Int) -> Bool
    func say() -> String
}

class BBTV: MyComponent {
    func isDiv(_ number: Int) -> Bool {
        return number%7 == 0
    }

    func say() -> String {
        return "BBTV"
    }
}

class Fizz: MyComponent {
    func isDiv(_ number: Int) -> Bool {
        return number%3 == 0
    }

    func say() -> String {
        return "FIZZ"
    }
}

class Buzz: MyComponent {
    func isDiv(_ number: Int) -> Bool {
        return number%5 == 0
    }

    func say() -> String {
        return "BUZZ"
    }
}

class FBComponent: MyComponent {
    func isDiv(_ number: Int) -> Bool {
        return number%15 == 0
    }

    func say() -> String {
        return "FIZZBUZZ"
    }
}
