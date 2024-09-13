// lib/dart_constructor_default.dart
class Person {
  // 필드
  String? name;

  // 기본 생성자, 생성자를 생략하는 경우 자동으로 만들어 준다, 기본 생성자는 거의 본 적이 없다.
  //Person(){}

  // 함수, 메소드
  getName() {
    return this.name;
  }
}

class Student {
  //필드
  String? school;
  int? grade;
  String? name;

  //이름이 없는 생성자를 만들면 기본 생성자는 못 만든다.
  Student(String school, int grade, String name) {
    this.school = school;
    this.grade = grade;
    this.name = name;
  }

  // 생성자 오버로딩이 안된다 => 이름이 없는 생성자는 오직 하나
  // Student() {}

  // 생성자를 더 만들고 싶을때 이름이 있는 생성자를 추가할 수 있다. 아래의 방식으로 한다.
  // 클래스명.생성자명([매개변수]){표현식}
  Student.defaultInit() {
    print('이름이 있는 생성자 호출');
  }

  //함수
  showInfo() {
    print('$school, $grade, $name');
  }
}
