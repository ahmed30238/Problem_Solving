import 'dart:math';

void main(List<String> args) {
  print(SherlockAndSquares.squares(3, 9));
}

class SherlockAndSquares {
  static int squares(int a, int b) {
    int counter = 0;
    for (var i = a; i <= b; i++) {
      if (i % sqrt(i) == 0) {
        counter++;
        print(i);
      }
    }
    return counter;
  }
}
/**
 * Watson likes to challenge Sherlock's math ability. He will provide a starting and ending value that describe a range of integers, inclusive of the endpoints. Sherlock must determine the number of square integers within that range.
 */