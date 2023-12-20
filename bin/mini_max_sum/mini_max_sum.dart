/*
Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

Example

The minimum sum is  and the maximum sum is . The function prints
arr = [1,3,5,7,9]
min = 1+3+5+7
max = 3+5+7+9

16 24 ==> results
 */

/**
 * دلوقتي عندنا ليسته فيها خمس ارقام عايزين اكبر مجموع لاربع ارقام من الخمسه واقل مجموع من اربع ارقام من الخمسه
 * عشان نجيب اكبر مجموع مكون من اربع ارقام محتاجين نشوف اصغر رقم ونستبعده ونجمع الباقي
 * والعكس صحيح في اقل مجموع
 */
class MiniMaxSum {
  miniMaxSum(List<int> arr) {
    List<int> biggestNumbers = [];
    List<int> smallestNumbers = [];
    int sumOfBig = 0;
    int sumOfSmall = 0;

    arr.sort();

    for (var i = 0; i < arr.length - 1; i++) {
      if (arr[i] < arr[i + 1]) {
        // here you can do it (sumOfBig += arr[i + 1]) directly without biggestNumbers List
        // but i prefer the listed way to keep the data
        biggestNumbers.add(arr[i + 1]);
      }
      if (arr[i] < arr[i + 1]) {
        smallestNumbers.add(arr[i]);
      }
    }
    biggestNumbers.forEach((element) {
      sumOfBig += element;
    });
    smallestNumbers.forEach((element) {
      sumOfSmall += element;
    });
    print("$sumOfSmall $sumOfBig");
    // print(biggestNumbers);
    // print(sumOfBig);
    // print(smallestNumbers);
  }
}
