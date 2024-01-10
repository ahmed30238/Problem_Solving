//
void main(List<String> args) {
  print(ViralAdvertising.viralAdvertising(5));
}

class ViralAdvertising {
  // n ==> No. of days
  static int viralAdvertising(int n) {
    int cumulativeLikes = 0;
    int noOfShare = 5 ~/ 2;
    print(noOfShare);
    for (var i = 1; i <= n; i++) {}
    return cumulativeLikes;
  }
}
/// اول يوم نشير مع 5 يعجبهم 2 ف كل واحد يشير مع 3