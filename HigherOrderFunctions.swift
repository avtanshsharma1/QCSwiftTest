// HigherOrderFunctions.swift – nested closures & high-order usage

import Foundation

func process(_ numbers: [Int], with transform: (Int) -> Int) -> Int {
    numbers.map(transform).reduce(0, +)
}

let result = process([1, 2, 3, 4, 5]) { num in
    (1...num).reduce(1, *) // factorial of each number
}.squareRoot()

print("Square root of summed factorials: \(result)") 