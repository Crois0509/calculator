import UIKit

// Lv.1 Calculator 클래스 생성하기
class Calculator {
    // Lv.3 Calculator 코드 수정하기
    // 프로퍼티 선언
    var firstNumber: Int
    var secondNumber: Int
    
    // Lv.3 Calculator 코드 수정하기
    // 이니셜라이저 추가
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    // Lv.1 연산기능 구현하기
    // Lv.3 Calculator 코드 수정하기
    // 매개변수 제거
    func calculate(operatorSymbol: String) -> Int {
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
//let calculator = Calculator()

//print(calculator.calculate(operatorSymbol: "+", firstNumber: 5, secondNumber: 5)) // 10
//print(calculator.calculate(operatorSymbol: "-", firstNumber: 5, secondNumber: 5)) // 0
//print(calculator.calculate(operatorSymbol: "*", firstNumber: 5, secondNumber: 5)) // 25
//print(calculator.calculate(operatorSymbol: "/", firstNumber: 5, secondNumber: 5)) // 1
//
// Lv.2 나머지 연산 출력&예외상황 출력
//print(calculator.calculate(operatorSymbol: "%", firstNumber: 5, secondNumber: 5)) // 0
//print(calculator.calculate(operatorSymbol: " ", firstNumber: 5, secondNumber: 5)) // 오류

// Lv.3 연산자 클래스 생성하기
// 더하기 연산자 클래스 생성
class AddOperation: Calculator {
    init(first: Int, second: Int) {
        super.init(firstNumber: first, secondNumber: second)
    }
    
    override func calculate(operatorSymbol: String = "+") -> Int {
        super.calculate(operatorSymbol: operatorSymbol)
    }
}

// 빼기 연산자 클래스 생성
class SubstractOperation: Calculator {
    init(first: Int, second: Int) {
        super.init(firstNumber: first, secondNumber: second)
    }
    
    override func calculate(operatorSymbol: String = "-") -> Int {
        super.calculate(operatorSymbol: operatorSymbol)
    }
}

// 곱하기 연산자 클래스 생성
class MultiplyOperation: Calculator {
    init(first: Int, second: Int) {
        super.init(firstNumber: first, secondNumber: second)
    }
    
    override func calculate(operatorSymbol: String = "*") -> Int {
        super.calculate(operatorSymbol: operatorSymbol)
    }
}

// 나누기 연산자 클래스 생성
class DivideOperation: Calculator {
    init(first: Int, second: Int) {
        super.init(firstNumber: first, secondNumber: second)
    }
    
    override func calculate(operatorSymbol: String = "/") -> Int {
        super.calculate(operatorSymbol: operatorSymbol)
    }
}

// 나머지 연산자 클래스 생성
class RemainingOperation: Calculator {
    init(first: Int, second: Int) {
        super.init(firstNumber: first, secondNumber: second)
    }
    
    override func calculate(operatorSymbol: String = "%") -> Int {
        super.calculate(operatorSymbol: operatorSymbol)
    }
}

let addOperator = AddOperation(first: 10, second: 20) // 30
let substractOperation = SubstractOperation(first: 100, second: 50) // 50
let multiplyOperation = MultiplyOperation(first: 2, second: 9) // 18
let divideOperation = DivideOperation(first: 10, second: 2) // 5
let remainingOperation = RemainingOperation(first: 10, second: 4) // 2

print(addOperator.calculate())
print(substractOperation.calculate())
print(multiplyOperation.calculate())
print(divideOperation.calculate())
print(remainingOperation.calculate())
