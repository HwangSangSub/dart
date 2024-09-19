// bin/dart_constructor_redirect.dart
import 'package:dart_class/dart_constructor_redirect.dart' as dart_redirect;

void main() {
  dart_redirect.Person person = dart_redirect.Person.second('Kim');
  print(person.showInfo());
}
