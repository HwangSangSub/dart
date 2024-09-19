import 'package:dart_operator/dart_operator.dart' as dart_operator;

void main(List<String> arguments) {
  int num = 5;
  dynamic result = num / 2; // 2로 나눈 값
  print('/2, $result');

  result = num % 2; // 2로 나눈 나머지
  print('%2, $result');

  result = num ~/ 2; // 순수한 정수값만 가진다
  print('~/2 , $result');

  num ~/= 2; // num = num ~/ 2; 2로 나눈 몫을 구하고 그 값을 다시 num에 대입한다.
  print('~/=2, $num');

  print('========================================================');
  // ??= : ??(if null) > ??표현은 널을 체크한다.

  String? msg; // null 허용
  print(msg);
  msg ??= 'Hello, Dart!'; //msg가 널이기 때문에 오른쪽 값이 대입된다.
  print(msg);
  msg ??= 'Today is ...'; // 컴파일 과정중에서 이값이 절대로 실행될 수 없기 때문에 경고가 나온다.
  print(msg);
}
