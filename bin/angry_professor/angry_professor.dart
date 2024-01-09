//
void main(List<String> args) {
  print(AngryProfessor.angryProfessor(2, [-1, 0, 2, 1]));
}

class AngryProfessor {
  /// k ==> the threshold (no of min student that must attend to continue)
  static String angryProfessor(int k, List<int> a) {
    int noOfStudentOnTimeCounter = 0;
    for (var i = 0; i < a.length; i++) {
      if (a[i] <= 0) {
        noOfStudentOnTimeCounter++;
      }
    }
    if (noOfStudentOnTimeCounter < k) {
      return "YES";
    } else {
      return "NO";
    }
  }
}
