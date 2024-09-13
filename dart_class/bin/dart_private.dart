import 'package:dart_class/dart_private.dart' as dart_private;

main() {
  dart_private.Person person = dart_private.Person('Kim', 28);
  print('name : ${person.name}');
  //print('name : ${person._age}'); // _age는 private이라 접근 불가
  print('name : ${person.getAge()}');
  //print('msg : ${person._msg()}'); // _msg()는 private이라 접근 불가
  person.showInfo();
}
