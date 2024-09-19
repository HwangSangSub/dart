// bin/dart_set.dart
void main() {
  // Set 타입 선언 및 초기화 : Set타입은 {} 로 표시
  // key가 없어서 다루는게 힘들지만 중복된 값을 가질 수 없기 때문에 용도에 따라서 사용하면 된다.
  Set<String> colors = {'Red', 'Orange', 'Yellow', 'Red'}; // 중복된 값은 들어갈 수 없다.(알아서 처리)
  print(colors.length);
  colors.forEach(print);

  // Set 타입 선언
  var colorList = <String>{};

  // 초기화
  // 값을 1개씩 추가
  colorList.add('SkyBlue');
  colorList.add('Green');

  // 값을 여러개 동시에 추가 > {} 로 묶어서 하기
  colorList.addAll({'White', 'Black','Green'});

  // forEach를 이용할 수 있다.
  colorList.forEach(print); // 아래의 익명함수를 사용하는 방법과 동일하다.
}
