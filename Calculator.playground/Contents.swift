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
            // Lv.2 나머지 연산 추가
        } else if operatorSymbol == "%" {
            result = firstNumber % secondNumber
            // Lv.2 예외처리 상황 처리하기
            // 지정되지 않은 연산자가 operatorSymbol에 들어올 경우
        } else {
            print("사용할 수 없는 연산자입니다.\n사용가능 연산자: +, -, *, /, %")
            result = 0
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

// Lv.2 나머지 연산 출력&예외상황 출력
print(calculator.calculate(operatorSymbol: "%", firstNumber: 5, secondNumber: 5)) // 0
print(calculator.calculate(operatorSymbol: " ", firstNumber: 5, secondNumber: 5)) // 오류
