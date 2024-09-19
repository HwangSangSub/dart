// lib/dart_private.dart

class Person {
  // 멤버 변수
  String? name; // public
  final int? _age; // private
  // 생성자
  Person(this.name, this._age);
  // 멤버 함수
  getAge() {
    // public
    return _age;
  }

  _getMsg() {
    // private
    return 'Hello !';
  }

  showInfo() {
    // public
    print('${_getMsg()}, My name is $name and age is $_age');
  }
}
