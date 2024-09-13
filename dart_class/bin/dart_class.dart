// 클래스 정의
class Person {
  // 필드
  String? name; // null 허용
  //late String name; // 나중에 값이 들어 올거라는 의미 (일시적으로 null이 들어 올 수 있다.)

  // 생성자 => 생략 시 기본생성자 사용

  // 함수 => 메소드
  String getName() {
    return this.name ?? 'No Person';
  }
}

void main() {
  //인스턴스(객체)를 생성
  Person student = new Person();
  var teacher = Person();

  // 객체 필드 접근
  student.name = 'Kim';
  teacher.name = 'Park';

  // 객체 메소드 호출
  print('student name : ${student.getName()}\n');
  print('teacher name : ${teacher.getName()}');
}
