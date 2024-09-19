// bin/dart_nill.dart

class Employee {
  String? name;
}

// 1)조건적 멤버 접근 : ?.
void fieldMain() {
  //Employee? emp = null;
  Employee emp = Employee()
    ..name = 'Employee'; // 객체를 생성하면서 그 객체의 값을 바로 지정하는 표현식

  var result = emp.name;

  result = emp.name;

  print(result);
}

// 2) 널 확인 연산자 : ??
void nullChkMain() {
  Employee emp = Employee();

  var result = emp.name ?? 'No employee';

  if (emp.name == null) {
    result = 'No employee';
  } else {
    result = emp.name!;
  }

  print(result);
}

void main() {
  fieldMain(); // Employee
  nullChkMain(); // No employee
}
