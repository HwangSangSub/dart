// bin/dart_collection.dart
void main() {
  // List 타입 선언 및 초기화 : Set타입은 [] 로 표시
  List<String> colors = ['Red', 'Orange', 'Yellow'];
  // 첫번째 값
  print(colors.first);
  // 길이
  print(colors.length);
  for (int i = 0; i < colors.length; i++) {
    print(colors[i]);
  }

  // List 타입 선언
  var colorList = <String>[];
  print(colorList.isEmpty); // 비어있기 때문에 true가 나온다.

  // 초기화
  // 값을 1개씩 추가
  colorList.add('SkyBlue');
  colorList.add('Green');

  // 값을 여러개 동시에 추가 > [] 로 묶어서 하기
  colorList.addAll(['White', 'Black']);

  // forEach를 이용할 수 있다.
  colorList.forEach(print); // 아래의 익명함수를 사용하는 방법과 동일하다.
  colorList.forEach((value) {
    print(value);
  });
}
