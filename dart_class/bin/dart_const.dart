// bin/dart_const.dart

class Person {
  // 멤버 변수 => 모두 final 키워드를 붙임
  // null 체크를 안해도 됨
  final String name;
  final int age;

  // 상수 생성자
  // 필드가 final 일 경우는 무조건 값이 들어간다는 조건이기 때문에 매개변수에 this. 붙인다.
  const Person(this.name, this.age);

  // 멤버 함수
  showInfo() {
    return '$name, $age';
  }
}

main() {
  // 상수 생성자는 const를 붙여야 한다
  Person personOne = const Person('Kim', 25); // 새로운 객체 생성
  Person personTwo = const Person('Kim', 25); // 동일한 객체 참조
  Person personThree = Person('Kim', 25); // 새로운 객체 생성
  Person personFour = Person('Kim', 25); // 새로운 객체 생성

  // 각 객체의 멤버 변수 값을 출력
  print('one : ${personOne.showInfo()}');
  print('two : ${personTwo.showInfo()}');
  print('three : ${personThree.showInfo()}');
  print('four : ${personFour.showInfo()}');

  // 각 객체가 실제로 동일한 객체인지 확인
  print(identical(personOne, personTwo));
  print(identical(personTwo, personThree));
  print(identical(personThree, personFour));
}
