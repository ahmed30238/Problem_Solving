class ChocolateFeast {
  // 10,2,5
  static int chocolateFeast(int n, int c, int m) {
    // n ==> money to spend // c ==> choco bar price // m ==> no of wrappers to get bars
    double initialBarsCounter = n / c;
    int wrapper = initialBarsCounter.toInt();
    while (wrapper >= m) {
      int newBars = wrapper ~/ m;
      initialBarsCounter += newBars;
      wrapper = newBars + (wrapper % m);
    }

    return initialBarsCounter.toInt();
  }
}

/// 5>>3 1
void main(List<String> args) {
  print(ChocolateFeast.chocolateFeast(15, 3, 2));
  // 6/2==> 3wrp
}
