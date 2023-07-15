class ArraySum {
 static int printSum(List<int> ar) {
    var sum = 0;
    for (int i = 0; i < ar.length; i++) {
      sum += ar[i];
    }
    return sum;
  }
}
