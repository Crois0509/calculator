import UIKit

// Lv.1 Calculator 클래스 생성하기
class Calculator {
    // Lv.1 연산기능 구현하기
    func calculate(operatorSymbol: String, firstNumber: Int, secondNumber: Int) -> Int {
        var result: Int = 0
        
        // 더하기 구현
        if operatorSymbol == "+" {
            result = firstNumber + secondNumber
        // 빼기 구현
        } else if operatorSymbol == "-" {
            result = firstNumber - secondNumber
        // 곱하기 구현
        } else if operatorSymbol == "*" {
            result = firstNumber * secondNumber
        // 나누기 구현
        } else if operatorSymbol == "/" {
            result = firstNumber / secondNumber
        }
        
        return result
    }
}

// Lv.1 인스턴스화 후 연산하여 출력하기
let calculator = Calculator()

print(calculator.calculate(operatorSymbol: "+", firstNumber: 5, secondNumber: 5)) // 10
print(calculator.calculate(operatorSymbol: "-", firstNumber: 5, secondNumber: 5)) // 0
print(calculator.calculate(operatorSymbol: "*", firstNumber: 5, secondNumber: 5)) // 25
print(calculator.calculate(operatorSymbol: "/", firstNumber: 5, secondNumber: 5)) // 1
