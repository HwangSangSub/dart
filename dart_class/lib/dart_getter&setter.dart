// lib/dart_getter&setter.dart
// 기본 형태
class Person {
  // 멤버 변수
  String _name; // private으로 선언
  // 생성자
  Person(this._name);
  // 멤버 함수 : 일반
  /*
  String get name { // 매개변수를 인자로 받을 수 없음 
    return _name;
  }
  */
  // 멤버 함수 : 람다식
  String get name => _name;
  /*
  void set name(String name) {
    this._name = name;
  }
  */
  // 멤버 함수 : 람다식
  set name(String name) => _name = name;
}
