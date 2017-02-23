import Foundation

class FizzBuzz {
    func say(number: Int) -> String {

        let components: [MyComponent]
            = [ FBComponent(), Fizz(), Buzz(), BBTV() ]

        for component in components {
            if component.isDiv(number) {
                return component.say()
            }
        }

        return String(number)
    }
}
