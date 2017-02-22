class Base {
    func hi() {
        print("Hi from base")
    }
}

class Sub: Base {
    override func hi() {
        print("Hi from sub")
    }
}

extension Sub {
    func hi2() {
        print("Hi2 from sub")
    }
}

var sub = Sub()
sub.hi()
sub.hi2()


