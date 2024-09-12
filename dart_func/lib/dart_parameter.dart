// lib/dart_parameter.dart
// 선택적 매개변수
// -1) 이름 있는 매개변수(Named parameters)
// 매개변수 종류가 많을때 종종 쓰인다.
// 빨간줄 뜨는 이유는 nullable 때문에 뜬다.
// 데이터타입 뒤에 ? 가 붙으면 null 허용하겠다.
// 선택적 매개변수이지만 데이터 타입 앞에 required 붙이면 무조건 들어오는 값이라고 정의 > 이 값이 없으면 함수호출이 안됨.
// 매개변수명 뒤에 = 값 을 넣으면 값이 안들어와도 기본값을 지정할 수 있다.
void getAddress(String country,
    {String city = '서울특별시', required String gu, String? ro}) {
  String address = '$country, $city $gu $ro';
  print(address);
}

void nameParams() {
  getAddress('대한민국', city: '대구광역시', gu: '중구', ro: '중앙대로'); // 이름 있는 매개변수는 순서에 상관없다.( city: ) > 이런게 이름 있는 매개변수.
  getAddress('대한민국', gu: '중구', ro: '중앙대로', city: '대구광역시');

  getAddress('대한민국', gu: '종로구');
}

// -2) 위치적 선택 매개변수 (Optional positional parameters)
// required : 는 적용못함
void getAdrs(String country, [String city = '서울특별시', String? gu]){
  print('$country, $city $gu');
}
