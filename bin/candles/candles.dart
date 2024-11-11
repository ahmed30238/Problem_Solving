// ignore: slash_for_doc_comments

/**
 you have list of integer that you need to find the tallest number and how many of them then retun the number
 ex => [4, 4, 1, 3]the maximum height candles are 4 units high, there are two of them, so return 2.
 */
void main(List<String> args) {
  print(BirthdayCandles.birthDayCandles(
      [4,4,1,3]));
}

class BirthdayCandles {
  static int birthDayCandles(List<int> arr) {
    // This is another solution
    // arr.sort();
    // int i = arr.length - 1;
    // int counter = 1;
    // while (arr[i] == arr[i - 1]) {
    //   counter++;
    //   if (i == 0) {
    //     break;
    //   }
    //   i--;
    // }
    // return counter;

    //! sol 2 
    Map<int, int> candles = {};
    int theValue = 0;
    // var theKey = 0;
    for (var element in arr) {
      candles.update(element, (value) => value + 1, ifAbsent: () => 1);
    }

    candles.forEach((key, value) {
      if (value > theValue) {
        theValue = value;
        // theKey = key;
      }
    });
    return theValue;
    //! sol 3
    // List<int> tallestCandles = [];
    // arr.sort();
    // for (var i = arr.length - 1; i > 0;) {
    //   if (arr[i] > arr[i - 1]) {
    //     tallestCandles.add(arr[i]);
    //   } else {
    //     for (var m = i; m > 0;) {
    //       for (var j = m - 1; j >= 0; j--) {
    //         if (arr[m] == arr[j]) {
    //           tallestCandles.add(arr[j]);
    //         }
    //       }
    //       tallestCandles.add(arr[m]);
    //       break;
    //     }
    //   }
    //   break;
    // }
    // return tallestCandles.length;
  }
}
