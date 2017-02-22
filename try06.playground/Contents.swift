protocol User {
    func getName() -> String
}

class Employee {
    
}

extension Employee: User {
    func getName() -> String {
        return "😓"
    }
}
