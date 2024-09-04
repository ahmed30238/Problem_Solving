class MinimumDistance {
  int minimumDistances(List<int> a) {
    List<int> indicesDifference = [];

    for (var x = 0; x < a.length; x++) {
      for (var i = 0; i < a.length; i++) {
        if (a[x] == a[i] && i != x) {
          indicesDifference.add((i - x).abs());
        }
      }
    }
    var withoutRepition = indicesDifference.toSet().toList();
    int minimum = 100000;
    for (var i = 0; i < withoutRepition.length; i++) {
      if (withoutRepition[i] < minimum) {
        minimum = withoutRepition[i];
      }
    }
    if (withoutRepition.isEmpty) {
      return -1;
    } else {
      return minimum;
    }
  }
}

void main(List<String> args) {
  MinimumDistance().minimumDistances([1, 2, 3, 4, 10]);
}
