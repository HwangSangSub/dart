// bin/dart_cascade.dart
class Employee {
  // 필드
  String name = "employee";
  int? age;

  // 생성자
  setAge(int age) {
    this.age = age;
  }

  // 메소드
  showInfo() {
    print('$name is $age');
  }
}

void defaultMain() {
  Employee emp = Employee();
  emp.name = "Hong";
  emp.setAge(25);
  emp.showInfo();
}

void cascadeMain() {
  Employee emp = Employee()
    ..name = "Kang"
    ..setAge(30)
    ..showInfo();
  print('check : ');
  
  emp.showInfo();
}

void main() {
  //defaultMain();
  cascadeMain();
}
