// bin/dart_map.dart
void main() {
  // Map 타입 선언 및 초기화
  Map<int, String> testMap = {1: 'Red', 2: 'Orange', 3: 'Yellow', 4: 'Red'};

  // Map이 보유한 값의 실제 타입 : MapEntry
  print(testMap.length);
  for (var key in testMap.keys) {
    // Dart의 순환 for 문
    print('$key, ${testMap[key]}');
  }

  // Map 타입 선언
  var maps = <String, int>{}; // Set과 다르게 제네릭 타입은 2가지를 선언해야야한다 : 키 역할을 하는 값
  // var maps = Map(); // 클래스 처럼 선언할 수 있다.

  // 초기화
  // maps[키] = 값;
  maps['Red'] = 1;
  maps['Orange'] = 2;
  maps['Yellow'] = 3;

  maps.forEach((key, value) {
    // Map은 키가 중요한 역할을 하기 때문에 키도 매개변수로 받아온다.
    print('$key, $value');
  });

  maps['Yellow'] = 4; // 기존에 키가 있기 때문에 값이 수정됨.

  // 이미 해당 키가 등록된 경우 값을 업데이트,
  // 해당 키가 등록되지 않은 경우 추가
  maps.update('Blue', (value) => 20,
      ifAbsent: () =>
          0); // 키, 값, ifAbsent 이름이 있는 선택적 매개변수(얘가 없어도 동작은 함.) > 값이 없는 경우 => 결과값을 반환함.

  maps.forEach((key, value) {
    print('$key, $value');
  });
}
