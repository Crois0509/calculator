//: [Previous](@previous)

import Foundation

class Calculator {
    // 더하기
    func addOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
    
    // 빼기
    func subOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
    
    // 곱하기
    func mulOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
    
    // 나누기
    func divOperation(_ num1: Double, _ num2: Double) -> Double {
        if num2 == 0 {
            return 0
        }
        return num1 / num2
    }
}

let calculator = Calculator()
calculator.addOperation(10, 20)
calculator.subOperation(20, 20)
calculator.mulOperation(10, 10)
calculator.divOperation(10, 0)
