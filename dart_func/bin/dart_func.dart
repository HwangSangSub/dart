
// 함수 선언 : 리턴타입 함수명 (매개변수 [, 매개변수, ...])
String printMessage(String msg) {
  return 'msg : $msg';
}

// 리턴값이 없는 경우 리턴타입은 void
void welcomeMsg() {
  print('Hello, Dart!!');
}

// 리턴타입이 생략 => 컴파일 단계에서 dynamic이 사용
getValue() {
  return (1 + 1);
}

void main(List<String> arguments) {
  // 함수 호출
  var result = printMessage('Today is ...');
  print(result);

  welcomeMsg();

  var msg = 'message : ${getValue()}';
  print(msg);
}
