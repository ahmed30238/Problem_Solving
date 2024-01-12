void main(List<String> args) {
  print(PermutationEquation.permutationEquation([4, 3, 5, 1, 2]));
}

class PermutationEquation {
  static List<int> permutationEquation(List<int> p) {
    List<int> res = [];
    List<int> indicesOfxValues = [];
    for (var x = 1; x <= p.length; x++) {
      int index = p.indexWhere((element) => element == x);
      indicesOfxValues.add(index + 1);
      int index1 =
          p.indexWhere((element) => element == indicesOfxValues[x - 1]);
      res.add(index1 + 1);
    }

    return res;
  }
}
