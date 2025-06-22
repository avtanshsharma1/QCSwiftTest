// ErrorHandling.swift – throws functions with do/catch blocks

import Foundation

enum MathError: Error {
    case divideByZero
}

func divide(_ a: Double, by b: Double) throws -> Double {
    guard b != 0 else { throw MathError.divideByZero }
    return a / b
}

func runDivision() {
    do {
        let result = try divide(10, by: 0)
        print("Result: \(result)")
    } catch MathError.divideByZero {
        print("Cannot divide by zero")
    } catch {
        print("Unexpected error: \(error)")
    }
}

runDivision() 