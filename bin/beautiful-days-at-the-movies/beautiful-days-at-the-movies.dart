//
void main(List<String> args) {
  print(BeautifulDays.beautifulDays(123, 456789, 189));
}

class BeautifulDays {
  static int beautifulDays(int i, int j, int k) {
    int beautifulDaysCounter = 0;
    for (var x = i; x <= j; x++) {
      List<String> firsthalf = x.toString().split("");
      var reversed = int.parse(firsthalf.reversed.join());
      if ((x - reversed).abs() % k == 0) // beautiful day
      {
        beautifulDaysCounter++;
      }
    }
    return beautifulDaysCounter;
  }
}
