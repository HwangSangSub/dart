// lib/type.dart
void printVariable() {
  num numVal = 10;
  int intVal = 100;
  double dubVal = 12.0;

  numVal = intVal;
  numVal = dubVal;

  // 서로 변환이 안된다.
  // intVal = dubVal;
  //dubVal = intVal;
}

void printCollection() {
  // 불편하면 var를 써라
  List<int> list = [1, 1, 2, 2, 3];
  print(list[0]);
  print(list[1]);

  Set<int> sets = {1, 2, 3}; // 같은 값을 가져올 수 없다.
  print(sets.contains(1));

  Map<String, dynamic> map = {
    // 객체와 유사
    'name': 'Hong',
    'age': 20
  };
  print(map['name']);
}

void pringConstant() {
  var val = 10;
  final finalVal = (1 + val);
  const constVal = (1 + val); // const 타입은 지금 현재 컴파일할때 이미 고정된 값이어야 하는데 안됨.
}
