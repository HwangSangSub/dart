// bin/dart_multi_future.dart

Future<String> getData(var no) {
  return Future(() {
    for (int i = 0; i < 10000000000; i++) {
      // 10,000,000,000
      // Ten billion(십억) times. My PC takes about four seonds.
    }
    return '$no compleleted';
  });
}

void firstMain() {
  print('start');

  var first = getData(1);
  first.then((data) {
    print(data);
    var second = getData(2);
    second.then((data) {
      print(data);
      var third = getData(3);
      third.then((data) {
        print(data);
      });
    });
  }).catchError((e) {
    print(e);
  });

  print('end');
}

// async & await : 내부의 순서를 보장한다. > 비동기를 가지고 있는걸 막아주지는 못한다.
void futureTest(var no) async {
  print('$no start');

  var first = await getData(1);
  print('$no first result : $first');

  var second = await getData(2);
  print('$no second result : $second');

  var third = await getData(3);
  print('$no third result : $third');

  print('$no do something');
}

void main() {
  // 바깥에서 실행할때는 비동기다. : 순서를 보장하지 못하고 내부에서는 순서를 보장해준다.
  futureTest(1);
  futureTest(5);
}
