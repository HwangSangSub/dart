// bin/dart_vs.dart
import 'dart:io';

// 서버가 가지고 있는 이미지로 가정
List<String> messages = ['Hello !! ', 'Welcome ', 'to ', 'Flutter world!'];

void futureTest() {
  var future = Future(() {
    var result = '';
    for (int i = 0; i < messages.length; i++) {
      result += messages[i];
    }
    return result;
  });
  // 옆으로 나열하는 방식은 stdout로 해야한다.
  future.then((x) => stdout.write(x),
      onError: (e) => print(e)); // 1번 서버와 통신을 하면 종료시키는 방식
}

void streamTest() {
  var stream =
      Stream.fromIterable(messages); // Stream 클래스 만드는 방식(배열에 대한 값을 처리하기 위해서)

  stream.listen((x) => stdout.write(x));
}

void main() {
  //futureTest();
  streamTest();
}
