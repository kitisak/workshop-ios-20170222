class Point {
    var x: Int?
    var y: Int = 1 {
        willSet {
            call()
        }
    }
    
    func call() {
        print("Changed")
    }
}

var point = Point();
point.x = 1
point.y = 1
