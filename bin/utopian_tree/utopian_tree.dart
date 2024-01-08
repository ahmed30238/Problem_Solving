void main(List<String> args) {
  print(UtopianTree.utopianTree(0));
}

class UtopianTree {
  /// initial height = 1;
  /// n ==> the number of growth cycles to simulate
  static int utopianTree(int n) {
    int height = 1;

    for (var i = 1; i <= n; i++) {
      if (i % 2 != 0) {
        height *= 2;
      } else {
        height++;
      }
    }

    return height;
  }
}
