//
void main(List<String> args) {
  print(PickingNumber.pickingNumbers([4, 97, 5, 97, 97, 4, 97, 4, 97, 97, 97, 97, 4, 4, 5, 5, 97, 5, 97, 99, 4, 97, 5, 97, 97, 97, 5, 5, 97, 4, 5, 97, 97, 5, 97, 4, 97, 5, 4, 4, 97, 5, 5, 5, 4, 97, 97, 4, 97, 5, 4, 4, 97, 97, 97, 5, 5, 97, 4, 97, 97, 5, 4, 97, 97, 4, 97, 97, 97, 5, 4, 4, 97, 4, 4, 97, 5, 97, 97, 97, 97, 4, 97, 5, 97, 5, 4, 97, 4, 5, 97, 97, 5, 97, 5, 97, 5, 97, 97, 97]));
}

class PickingNumber {
  static int pickingNumbers(List<int> a) {
    Map<int, int> numbersCounter = {};
    for (var element in a) {
      numbersCounter.update(element, (value) => value + 1, ifAbsent: () => 1);
    }
    int maxCounter = 0;
    print(numbersCounter);
    for (var k1 in numbersCounter.keys) {
      for (var k2 in numbersCounter.keys) {
        if ((k1 - k2).abs() <= 1) {
          int currentCount = k1 != k2
              ? numbersCounter[k1]! + numbersCounter[k2]!
              : numbersCounter[k1]!;
          if (currentCount > maxCounter) {
            print("k1 $k1 k2 $k2 count $currentCount");
            maxCounter = currentCount;
          }
        }
      }
    }
    return maxCounter;
  }
}
