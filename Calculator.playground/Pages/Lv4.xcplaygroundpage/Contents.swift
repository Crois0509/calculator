//: [Previous](@previous)

import Foundation

protocol OperationType {
    func operation(_ num1: Double, _ num2: Double) -> Double
}

class AdstractOperation: OperationType {
    func operation(_ num1: Double, _ num2: Double) -> Double {
        return 0
    }
}

class AddOperation: AdstractOperation {
    // 더하기
    override func operation(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

class SubOperation: AdstractOperation {
    // 빼기
    override func operation(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

class MulOperation: AdstractOperation {
    // 곱하기
    override func operation(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

class DivOperation: AdstractOperation {
    // 나누기
    override func operation(_ num1: Double, _ num2: Double) -> Double {
        if num2 == 0 {
            return 0
        }
        return num1 / num2
    }
}

class RemOperation: AdstractOperation {
    // 나머지 구하기
    override func operation(_ num1: Double, _ num2: Double) -> Double {
        if num2 == 0 {
            return 0
        }
        return num1 / num2
    }
}

// 클래스와 관계맺기
class Calculator {
    var operation: AdstractOperation?
    
}

let calculator = Calculator()
calculator.operation = AddOperation()
print(calculator.operation?.operation(10, 20) ?? 0)

