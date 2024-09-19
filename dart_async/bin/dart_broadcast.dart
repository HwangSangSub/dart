// bin/dart_broadcast.dar

import 'dart:async';

void main() {
	print('start');
	
	// StreamController.broadcast()를 통해 StreamController 객체 생성
	StreamController streamCtrl = StreamController.broadcast();
	
	// 멤버 변수로 등록된 stream 객체에 등록할 listen을 등록
	streamCtrl.stream.listen((x) => print('listen 1 : $x'));
	streamCtrl.stream.listen((x) => print('listen 2 : $x'));
	
	// StreamController 객체의 add()를 통해 이벤트 등록
	streamCtrl.add(100);
	streamCtrl.add('test');
	streamCtrl.add(200);
	streamCtrl.add(300);
	streamCtrl.close();
	
	print('do something');
}