// bin/dart_implements.dart
// 추상 클래스
abstract class Person {
  eat();
  study() {
    print('People are studying.');
  }
}

abstract class Junior {
  work() {
    print('work hard');
  }
}

// 추상 클래스 Person와 Junior을 구현한 클래스
// extends 의 경우는 상속을 한개만 받을 수 있다.
// implements 여러개의 추상메소드를 할 경우 사용한다.
class Developer implements Person, Junior {
  // Person
  @override
  eat() {
    print('Developer eat a meal');
  }

  @override
  study() {
    print('Developers are studying.');
  }

  // Junior
  @override
  work() {
    print('Developers are developing.');
  }
}

main() {
  // 타입을 Person으로 선언한 경우 Junior의 메서드 사용불가
  Person person = Developer();
  person.eat();
  person.study();
  // 타입을 Junior으로 선언한 경우 Person의 메서드 사용불가
  Junior junior = Developer();
  junior.work();
  // 타입을 Developer으로 선언한 경우 오버라이딩한 모든 메서드 사용가능
  Developer developer = Developer();
  developer.eat();
  developer.study();
  developer.work();
}
