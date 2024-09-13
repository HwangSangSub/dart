// bin/dart_constructor.dart
import 'package:dart_class/dart_constructor_default.dart' as dart_const;

void main() {
  dart_const.Person person = dart_const.Person();
  print('Person : ${person.getName()}');

  dart_const.Student first = dart_const.Student("예담", 3, "Hong");
  dart_const.Student second = dart_const.Student.defaultInit();
  first.showInfo();
  second.showInfo();
}
