void main(List<String> args) {
  print(FindingDigits.findDigits(1012));
}

class FindingDigits {
  static int findDigits(int n) {
    int counter = 0;
    var r = n.toString().split("").map((e) => int.parse(e)).toList();
    for (var i = 0; i < r.length; i++) {
      if (r[i] != 0) {
        if (n % r[i] == 0) {
          counter++;
        }
      }
    }
    return counter;
  }
}
