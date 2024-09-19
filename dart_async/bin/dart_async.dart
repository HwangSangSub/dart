import 'dart:isolate';

late int count; // 나중에 값이 생긴다.
// 가장 기본 isolate // 완전히 독립
// 필요에 따라서 메세지로 주고 받는게 가능하다.
void main() {
  count = 0;
  Isolate.spawn(isolateTest, 1);
  Isolate.spawn(isolateTest, 2);
  Isolate.spawn(isolateTest, 3);
}

void isolateTest(var m) {
  count=0;
  print('isolate no.$m, $count');
}
