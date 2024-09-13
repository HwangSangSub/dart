// bin/dart_getter&setter.dart
import 'package:dart_class/dart_getter&setter.dart' as dart_getset;

main() {
 dart_getset.Person person = dart_getset.Person('Kim');
 print(person.name);
 person.name = 'Hong';
 print(person.name);
}