// bin/dart_type.dart
class Person {
  // 필드
  String name = 'Person';
  // 생성자
  // 메소드
}

class Employee extends Person {
  @override
  String name = 'Employee';
}

class Student extends Person {
  @override
  String name = 'Student';
}

void main() {
  Employee emp = Employee(); // new 연산자를 있긴 하지만 new를 생략하는 추세이다.
  Student std = Student();

  // 타입변환
  Person first = emp as Person;
  Person second = std; // 상속이 명확하면 as를 생략할 수 있다.

  print('first.name = ${first.name}'); // Employee
  print('second.name = ${second.name}'); // Student

  // 맞는지, 타입검사 : is
  print('emp is Employee');

  // 아닌지, 타입검사 : is!
  print('emp is Employee');
}
