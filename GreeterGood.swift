// GreeterGood.swift – cleanly formatted, should have no lint violations

import Foundation

struct Greeter {
    let name: String

    func greet() {
        print("Hello, \(name)!")
    }
}

// Example invocation (ignored by lint when used as a script)
let greeter = Greeter(name: "World")
greeter.greet() 