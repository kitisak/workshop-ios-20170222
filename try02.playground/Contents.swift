func hello(name: String, xx: String = "Default") -> String {
    return "Hello " + name + xx
}

hello(name: "somkiat", xx: "xxx")
hello(name: "somkiat")

func hello2(_ names: String...) -> String {
    var result = ""
    for name in names {
        result += name
    }
    return result
}

hello2()
hello2("1")
hello2("1", "2")
hello2("1", "2", "3")



