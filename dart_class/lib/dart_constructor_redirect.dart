// lib/dart_contructor_redirect.dart

class Person {
  // 필드
  String? name;
  int? age;

  // 이름이 없는 생성자
  Person(this.name, this.age);

  // 리다이렉팅 생성자 => 이름이 없는 생성자 호출
  Person.init(String name) : this(name, 20);

  // 리다이렉팅 생성자 => 이름이 있는 생성자 호출
  Person.second(String name) : this.init(name);

  showInfo() {
    return 'name : $name, age : $age';
  }
}
