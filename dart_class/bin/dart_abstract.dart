// bin/dart_abstract.dart
import 'package:dart_class/dart_abstract.dart' as dart_abstract;

void main() {
  dart_abstract.Developer developer = dart_abstract.Developer();
  developer.work(); // 오버라이딩한 메소드
  developer.study(); // 부모격인 Person 클래스가 가지고 있는 일반 메소드

  // 똑같은 결과가 나옴
  dart_abstract.Person person = developer as dart_abstract.Person;
  person.work();
  person.study();
}
