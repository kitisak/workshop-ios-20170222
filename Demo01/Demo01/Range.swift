import Foundation

class Range {

    func of(_ input: String) -> String {
        var result: String = ""
        for number in getFirst(input)...getEnd(input) {
            result.append(String(number))
        }
        return result
    }

    func getFirst(_ input: String) -> Int {
        let index = input.index(input.startIndex, offsetBy: 1)
        let number = Int(String(input[index]))!
        if isStartWithBucket(input) {
            return number
        }
        return number + 1
    }

    func getEnd(_ input: String) -> Int {
        let index = input.index(input.startIndex, offsetBy: 3)
        let number = Int(String(input[index]))!
        if isEndWithBucket(input) {
            return number
        }
        return number - 1
    }

    func isStartWithBucket(_ input: String) -> Bool {
        if input.hasPrefix("[") {
            return true
        }
        return false
    }

    func isEndWithBucket(_ input: String) -> Bool {
        if input.hasSuffix("]") {
            return true
        }
        return false
    }

}
