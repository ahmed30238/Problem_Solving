// ignore: slash_for_doc_comments
/**
 you have list of integer that you need to find the tallest number and how many of them then retun the number
 ex => [4, 4, 1, 3]the maximum height candles are 4 units high, there are two of them, so return 2.
 */
class BirthdayCandles {
  void birthDayCandles(List<int> arr) {
    List<int> tallestCandles = [];
    arr.sort();
    // for (var i = arr.length - 1; i > 0; i--) {
    //   if (arr.last > arr.length - 1) {
    //     tallestCandles.add(arr.last);
    //     break;
    //   } else if (arr[i] == arr[i - 1]) {
    //     tallestCandles.add(arr[i]);
    //   }
    // }
    for (var i = arr.length - 1; i > 0;) {
      if (arr[i] > arr[i - 1]) {
        tallestCandles.add(arr[i]);
      } else {
        for (var m = i; m > 0;) {
          for (var j = m - 1; j >= 0; j--) {
            if (arr[m] == arr[j]) {
              tallestCandles.add(arr[j]);
            }
          }
          tallestCandles.add(arr[m]);
          break;
        }
      }
      break;
    }
    print(tallestCandles.length);
  }
}
