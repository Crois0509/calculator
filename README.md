# 스파르타 iOS 5기 - Swift종합 문법반 기초
###
## 과제 1. Calculator 만들기
- Lv.1
    - 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스 만들기
    - 생성한 클래스를 이용하여 연산을 진행하고 출력
    
- Lv.2
    - Lv.1 에서 만든 Calculator 클래스에 "나머지 연산"이 가능하도록 코드를 추가하고, 연산 진행 후 출력
    - 오류가 날 수 있는 **예외처리** 상황에 대해 고민해보기 + 구현하기
    
- Lv.3
    - 아래의 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
        - AddOperation(더하기)
        - SubstractOperation(빼기)
        - MultiplyOperation(곱하기)
        - DivideOperation(나누기)
    - Calculator 클래스의 내부코드를 변경
        - 관계를 맺은 후 필요하다면 별도로 만든 연산 클래스의 인스턴스를 Calculator 내부에서 사용

- Lv.4 (도전과제)
    - AdstractOperation라는 **추상화**된 프로토콜 만들기
    - 기존에 구현한 AddOperation(더하기), SubstractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경
    - 스위프트의 어떤 문법을 이용하여 추상화할 수 있을지 생각해 봅시다
    
*** 

- **Lv.2 진행 중 에외처리 상황에 대한 고민**
    - Lv.1의 상태에서 calculate 메서드를 사용했을 때, 매개변수인 operatorSymbol 값으로 지정되지 않은 연산자(공백값이나 기타 다른 String 값)가 사용될 경우에 대한 대책이 없다.
    - 때문에 이를 대처할 수 있도록 if문에 else 라는 경우의 수를 만들고, 지정되지 않은 연산자가 사용되었을 때 사용자에게 경고를 보내는 코드를 추가하였다.

- **Lv.3 작성 완료 후 Lv.2 와 비교하여 개선된 점(hint.클래스의 책임(단일책임원칙))**
    - 기존 Calculator 클래스의 메소드인 calculate를 사용하기 위해서는 Calculator의 인스턴스를 만들고, calculate 메소드를 호출하여 사용할 수 있었다. 이 때, 매개변수로 operatorSymbol 및 계산할 숫자를 모두 입력해서 사용해야 하는 불편함이 있었다.
    - Calculate의 자식클래스로 연산자를 나누어 클래스를 생성하며 Calculator에 프로퍼티와 init 을 추가하고, 이를 자식클래스에서 초기화할 수 있도록 하였다. 또, calculate 메소드를 재정의 하여 각 연산자 클래스별로 operatorSymbol을 갖게 하고, 이를 통해 별도의 매개변수 입력 없이도 연산을 가능하게 하였다.
    - 이를 통해 본래 Calculate의 메소드인 calculate를 사용할 때 발생할 수 있었던 예외상황(잘못된 연산자 입력 등)을 방지하고, Calculate에서 할 일을 나누어 가짐으로써 불필요한 코드의 사용을 줄일 수 있었다.

- **Lv.4 작성 완료 후 Lv.3 와 비교하여 개선된 점(hint.클래스간의 결합도, 의존성(의존성역전원칙))**
    - AdstractOperation 프로토콜을 만들고, Calculator 클래스가 이를 준수하게 만들었다. 프로토콜에는 `firstNumber`와 `secondNumber`라는 Int타입의 변수를 만들어 Calculator가 프로퍼티를 가지게끔 하였다.
    - Calculator에 AdstractOperation 프로토콜을 준수하게 했기 때문에 자식 클래스인 다른 연산자 클래스는 프로토콜을 선언해주지 않아도 된다. 만약 선언하게 된다면 이는 중복 준수가 되어 에러가 발생한다.
    - 반대로 자식 클래스인 연산자 클래스에 AbstractOperation 프로토콜을 준수하게 하면 어떻게 될까? Calculator 클래스에 `firstNumber` 프로퍼티와 `secondeNumber` 프로퍼티를 남겨둔 채 연산자 클래스에 AbstractOperation 프로토콜을 준수하게 하면 아무런 변화가 없다. 부모 클래스에서 프로토콜을 준수하고 있으면 자식 클래스에서 별도로 준수하지 않더라도 문제가 발생하지 않는 것 같다
    - 이 때, Calculator 클래스에서 `firstNumber`와 `secondNumber` 프로퍼티를 지우면 곧바로 에러가 발생한다. AbstractOperation 프로토콜을 준수하게 만든 연산자 클래스가 프로토콜을 준수하지 않았다는 오류가 발생하는 것이다.
    - 이를 통해 알 수 있는건 '상속'은 클래스간의 의존성과 연결이 강하게 하는 것을 알 수 있었다.
