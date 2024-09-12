// 패키지 내의 라이브러리를 사용한다. > as 별칭 : 방식으로 사용한다.
import 'package:dart_application_1/dart_application_1.dart'
    as dartEx01; // package:현재 프로젝트의 패키지라는 의미 // lib 폴더 밑에 있는 dart_application_1.dart를 가져온다

// 실제 실행되는 위치

// 자바에 가까운 함수선언 방식임 : 함수의 리턴타입이 없어도 생성이 가능하며 return하는 타입에 따라 함수의 리턴타입이 정해지는 dynamic 방식으로 추론타입으로 자동처리된다.
add(int a, int b) {
  return a + b;
}

// main() : 실행되는 함수
void main() {
  int numberA = 10; // 변수에 명확하게 타입을 정해주는게 좋다
  int numberB = 20;
  var result =
      add(numberA, numberB); // 같은 파일안 함수 > var의 경우는 리턴받는거에 따라 알아서 타입이 처리된다.
  dartEx01.printReslut(
      result); // 다른 파일에 있는 함수 : import로 가져온 후 별칭을 걸었기 때문에 별칭.함수명 으로 호출한다.
}
