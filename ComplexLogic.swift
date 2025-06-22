// ComplexLogic.swift – several functions with branching to test complexity

import Foundation

func calculateFactorial(_ n: Int) -> Int {
    guard n >= 0 else { return 0 }
    if n == 0 { return 1 }
    var result = 1
    for i in 1...n {
        result *= i
    }
    return result
}

func categorize(number: Int) -> String {
    switch number {
    case ..<0:
        return "negative"
    case 0:
        return "zero"
    case 1...10:
        return "small"
    case 11...100:
        return "medium"
    default:
        return number % 2 == 0 ? "large-even" : "large-odd"
    }
}

func findMax<T: Comparable>(_ values: [T]) -> T? {
    var maxValue = values.first
    for val in values {
        if let currentMax = maxValue, val > currentMax {
            maxValue = val
        }
    }
    return maxValue
} 