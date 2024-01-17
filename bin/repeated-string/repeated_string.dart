void main(List<String> args) {
  print(RepeatedString.repeatedString("aba", BigInt.from(10)));
}

class RepeatedString {
  static BigInt repeatedString(String s, BigInt n) {
    BigInt strLen = BigInt.from(s.length);
    BigInt countAInS = BigInt.from(s.split('a').length - 1); 

    BigInt repeats = n ~/ strLen;
    BigInt remainder = n % strLen;

    BigInt totalCount = countAInS * repeats;

    String substring = s.substring(0, remainder.toInt());
    BigInt additionalCount = BigInt.from(substring.split('a').length - 1);

    totalCount += additionalCount;

    return totalCount;
  }
}
