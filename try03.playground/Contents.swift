let a = [1, 2]
let b = [1, 2]

func *( first: [Int], second: [Int] ) -> [Int] {
    var result = [Int]()
    for (index, _) in first.enumerated() {
        result.append(first[index] * second[index])
    }
    return result
}

var result = [1, 2, 3] * [1, 2, 3]
