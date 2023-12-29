//
void main(List<String> args) {
  BonAppetit.bonAppetit([3, 10, 2, 9], 1, 7);
}

class BonAppetit {
  static void bonAppetit(List<int> bill, int k, int b) {
    bill.remove(bill[k]);
    int annaTrueBill = bill.reduce((curr, next) => next + curr) ~/ 2;
    if (annaTrueBill == b) {
      print("Bon Appetit");
    } else {
      print(b - annaTrueBill);
    }
  }
}

/**
 * bonAppetit has the following parameter(s):

bill: an array of integers representing the cost of each item ordered
k: an integer representing the zero-based index of the item Anna doesn't eat
b: the amount of money that Anna contributed to the bill
 */
