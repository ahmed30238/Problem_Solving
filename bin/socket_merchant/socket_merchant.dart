//

void main(List<String> args) {
  // print((1~/2));
  print(SocketMerchant.sockMerchant(9, [10, 10, 10, 10, 20, 20, 30, 50]));
}

class SocketMerchant {
  static int sockMerchant(int n, List<int> ar) {
    int count = 0;
    Map<int, int> itemCounts = {};

    for (int item in ar) {
      itemCounts.update(item, (value) => value + 1, ifAbsent: () => 1);
    }

    for (int i in itemCounts.values) {
      count += (i ~/ 2);
    }
    print(itemCounts);
    return count;
  }
}
