//: [Previous](@previous)

import Foundation

class AddOperation {
    // 더하기
    func addOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

class SubOperation {
    // 빼기
    func subOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

class MulOperation {
    // 곱하기
    func mulOperation(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

class DivOperation {
    // 나누기
    func divOperation(_ num1: Double, _ num2: Double) -> Double {
        if num2 == 0 {
            return 0
        }
        return num1 / num2
    }
}

class RemOperation {
    // 나머지 구하기
    func remOperation(_ num1: Double, _ num2: Double) -> Double {
        if num2 == 0 {
            return 0
        }
        return num1 / num2
    }
}

// 클래스와 관계맺기
class Calculator {
    let addOperation = AddOperation()
    let subOperation = SubOperation()
    let mulOperation = MulOperation()
    let divOperation = DivOperation()
    let remOperation = RemOperation()
}

let calculator = Calculator()
calculator.addOperation.addOperation(10, 20)


