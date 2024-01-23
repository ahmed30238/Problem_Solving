void main(List<String> args) {
  print(TaumAndBday.taumBday(3, 6, 9, 1, 1));
}

class TaumAndBday {
  static BigInt taumBday(int b, int w, int bc, int wc, int z) {
    BigInt res = BigInt.parse("0");

    if (bc > wc + z) {
      res = BigInt.parse("${wc * w + (wc + z) * b}");
    } else if (wc > bc + z) {
      res = BigInt.parse("${bc * b + (bc + z) * w}");
    } else {
      res = BigInt.parse("${bc * b + wc * w}");
    }
    return res;
  }
}
/**
 * Taum is planning to celebrate the birthday of his friend, Diksha.
 *  There are two types of gifts that Diksha wants from Taum: one is black and the other is white.
 *  To make her happy, Taum has to buy b black gifts and w white gifts.

The cost of each black gift is bc units.
The cost of every white gift is wc units.
The cost to convert a black gift into white gift or vice versa is  units.
Determine the minimum cost of Diksha's gifts

/// ex 
/// b = 3 
/// w = 5
/// bc = 3
/// wc = 4
/// z = 1 
 */