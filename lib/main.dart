// 개인과제 1번
void project1() {
  int score = 84; // 학생의 점수
  String grade;

  if (score >= 90 && score <= 100) { // 조건이 90점 이상 100점 이하 일때 A등급
    grade = "A등급";
  } else if (score >= 80 && score < 90) { // 또 다른 조건 80점 이상 90점 미만 일때 B등급
    grade = "B등급";
  } else { // 나머지는 C등급
    grade = "C등급";
  }

  print("이 학생의 점수는 $score점이며, 등급은 $grade 입니다."); // 출력값
}

// 개인과제 2번
void project2() {
  // 구매자가 선택한 상품 목록
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  cart.add(""); // 상품 목록을 지워도 잘 출력 해보기 위해 넣음
  cart.remove(""); // 반대로 지워도 잘 출력 되는지 확인 해보기 위해 넣음

  // 상품 가격표 (Map)
  Map<String, int> prices = {
    "티셔츠": 10000,
    "바지": 8000,
    "모자": 4000,
  };

  // 총 금액 계산
  int totalPrice = 0; // 총 금액 초기값 0
  for (String item in cart) { // cart 안에 각 항목을 item 이라는 변수에 담고 반복
    if (prices.containsKey(item)) { // prices 안에서 item에 담은 상품이 존재 하는지 확인
      totalPrice += prices[item]!; // 현제 item의 가격을 가져와서 누적 연산자 +=를 사용해 모두 더해주고, !는 null이 아님을 명시해줌
    }
  }

  // 20,000원 이상 이면 10% 할인
  double discountRate = (totalPrice >= 20000) ? 0.10 : 0.0; // 위에 totalPrice가 조건식 20000 이상일 경우 삼항 연산자를 사용해서 참일 경우 0.10을 거짓일 경우 0.0을 곱해줌
  double discount = totalPrice * discountRate; // 위에 조건식이 참 이므로 totalPrice * 0.10을 곱해줘서 할인금액을 구함

  // 최종 결제 금액 계산
  double finalPrice = totalPrice - discount;

  // 결과 출력
  print("장바구니에 ${totalPrice}원 어치를 담으셨네요!");
  print("할인 금액: ${discount.toInt()}원"); // 할인 금액을 출력했을 때 소수로 출력되니 toInt를 통해서 정수로 바꿔줌
  print("최종 결제 금액은 ${finalPrice.toInt()}원 입니다!"); // ""
}

// 메인 함수: 모든 문제 호출
void main() {
  print("--- 필수문제 1번 ---");
  project1();
  print("");
  print("--- 필수문제 2번 ---");
  project2();
  /*
  --- 필수문제 1번 ---
  이 학생의 점수는 84점이며, 등급은 B등급 입니다.

  --- 필수문제 2번 ---
  장바구니에 40000원 어치를 담으셨네요!
  할인 금액: 4000원
  최종 결제 금액은 36000원 입니다!
  */
}