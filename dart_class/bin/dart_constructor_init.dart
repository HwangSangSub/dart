// bin/dart_constructor_init.dart
import 'package:dart_class/dart_contructor_initList.dart' as dart_init;

void main() {
  dart_init.Person first = dart_init.Person();
  first.showInfo();

  dart_init.Person second = dart_init.Person.init("Han");
  second.showInfo();
}
