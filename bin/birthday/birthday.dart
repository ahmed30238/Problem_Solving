class Birthday {
  static int birthday(List<int> s, int d, int m) {
    /// عايزين نشوف في الليسته هناخد كام قطعة شوكولا
    /// (m)
    /// الارقام اللي موجوده علي القطع مجموعها يكون بيساوي
    /// (d)
    int counter = 0;
    /// [1,2,1,3,2]
    for (var i = 0; i < s.length; i++) {
      int a = i; // 0 ==> 4
      int sum = 0; // 
      int j = a + m; // 2 , 6
      while (a < s.length) {
        if (a < j) {
          sum += s[a];
          a++;
        } else {
          break;
        }
      }
      if (sum == d) {
        counter++;
      }
    }

    return counter;
  }
}
/**
  The length of the segment matches Ron's birth month, and,

  The sum of the integers on the squares is equal to his birth day.

  ex==> 15 may means (5 segments, sum of integrs = 15)
 */
