// bin/dart_future.dart

void main() {
  print('start');
  // Future 객체 생성 > 리턴되는 데이터 타입을 제네릭으로 선언한다. : Uncompleted
  Future<String> myFuture = Future(() {
    for (int i = 0; i < 10000000000; i++) {
      // 10,000,000,000
      // Ten billion(십억) times. My PC takes about four seonds.
    }

    // 해당 작업이 정상적으로 완료되면 반환
    // return 'I got lots of Data!';

    // 작업 중 에러가 발생할 경우 가정
    return throw Exception('Failed : data is too many');
  });

  // Future 객체 내부에 등록된 작업이 완료될 경우 처리
  // future.then(data 일 경우, error 일 경우);

  // 람다식
  myFuture.then((data) {
    print(data);
  }, onError: (e) {
    // 작업 중 발생한 에러
    print('Result : $e');
  });

  print('end');
}
