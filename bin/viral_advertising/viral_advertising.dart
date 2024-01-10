//
void main(List<String> args) {
  print(ViralAdvertising.viralAdvertising(3));
}

class ViralAdvertising {
  // n ==> No. of days
  static int viralAdvertising(int n) {
    int initShared = 5; // 1st day share ==> 5
    int liked = 0;
    int resultedShares = 0;
    int cumulative = 0;
    for (var i = 1; i <= n; i++) {
      liked = initShared ~/ 2;
      resultedShares = liked * 3;
      cumulative += liked;
      initShared = resultedShares;
    }
    return cumulative;
  }
}

/// اول يوم نشير مع 5 يعجبهم 2 ف كل واحد يشير مع 3