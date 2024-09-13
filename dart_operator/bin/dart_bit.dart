// bin/dart_bit.dart

void main() {
  int a = 5; // 10진수
  int b = 0x03; // 16진수 : 0~9, A, B, C, D, E, F > 16이 되면 한자리가 생긴다
  // 맨 앞은 부호 0 : +, 1 : -
  // 5 : 0 000101
  // 3 : 0 000011

  print(a & b); // 0 000001 : 1 > 비트 연산자는 둘다 1일 경우 1 하나라도 0 이면 0
  print(a | b); // 0 000111 : 7
  print(a ^ b); // 0 000110 : 6
  print(a >> b); // 0 000000 : 0
  print(a << b); // 0 101000 : 40
}
