// lib/dart_etc.dart
// 1) 익명함수

/*
  (var x, var y){
    return x + y;
  }
 */
// 익명함수의 이름을 변수처럼 붙일 수 있다.
var myAnyPlus = (var x, var y) {
  return x + y;
};

// 2) 람다식 : (var x, var y) => x + y;
// return을 생략할 수 있다.
var myLamPlus = (var x, var y) => x + y;

void etcMain() {
  var result = myAnyPlus(5, 10);
  print(result);
  result = myLamPlus(5, 10);
  print(result);
}
