void main(List<String> args) {
  ExtraLongFactorials.extraLongFactorials(30);
}

class ExtraLongFactorials {
  static void extraLongFactorials(int n) {
    BigInt result = BigInt.parse("1");

    for (var i = n; i > 1; i--) {
      result *= BigInt.from(i);
    }
    print(result);
  }
}
