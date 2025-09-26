void main() {
  int score = 84;
  String grade;
  if (score >= 90 && score <= 100) {
    grade = "A등급";
  } else if (score >= 80 && score < 90) {
    grade = "B등급";
  } else {
    grade = "C등급";
  }

   print("필수문제 1번");
   print("이 학생의 점수는 $score점 이며, 등급은 $grade입니다.");
}
