protocol DataChange {
    func onSuccess(result: String)
}

class Main: DataChange {
    
    func process() {
        let data = DataAPI()
        data.call(change: self)
    }
    
    func onSuccess(result: String) {
        print("OnSuccess" + result)
    }
}


class DataAPI {
    
    func call(change: DataChange) {
        change.onSuccess(result: "")
    }
}