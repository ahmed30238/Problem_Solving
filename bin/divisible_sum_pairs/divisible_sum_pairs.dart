void main(List<String> args) {
  print(DivisibleSumPairs.divisibleSumPairs(6, 3, [1, 3, 2, 6, 1, 2]));
}

class DivisibleSumPairs {
  static int divisibleSumPairs(int n, int k, List<int> ar) {
    int counter = 0;
    for (var i = 0; i < n; i++) {
      for (var j = 1; j < ar.length; j++) {
        if ((ar[i] + ar[j]) % k == 0 && j > i) {
          counter++;
        }
      }
    }
    return counter;
  }
}
/// عندنا ليستة ارقام عايزين كل الازواج اللي مجموعهم يقبل القسمه علي 
/// (k)