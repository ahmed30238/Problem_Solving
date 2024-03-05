void main(List<String> args) {
  print(BeautifulTriplets.beautifulTriplets(1, [2, 2, 3, 4, 5]));
}

class BeautifulTriplets {
  static int beautifulTriplets(int d, List<int> arr) {
    int tripletCounter = 0;
    for (var i = 0; i < arr.length; i++) {
      int x = arr[i] + d;
      if (arr.contains(x) && arr.contains(x + d)) {
        tripletCounter++;
      }
    }

    //! this is a timeout solution (not prefer)
    ///    arr.sort((a, b) => b.compareTo(a));
    // for (var i = 0; i < arr.length; i++) {
    //   int x = arr[i] + d;
    //   if (arr.contains(x) && arr.contains(x + d)) {
    //     tripletCounter++;
    //   }
    // int a = i;
    // while (a < arr.length) {
    //   int k = i;
    //   while (k < arr.length) {
    //     if (arr[i] - arr[a] == d && arr[a] - arr[k] == d) {
    //       tripletCounter++;
    //     }
    //     k++;
    //   }
    //   a++;
    // }
    // }
    return tripletCounter;
  }
}
