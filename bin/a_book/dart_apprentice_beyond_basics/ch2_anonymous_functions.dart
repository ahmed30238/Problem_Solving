import 'dart:math';

class AnonymousFunctions {
  // Function multiply = (x, y) => x * y;
  // var nn = (int x, int y) {
  //   return x * y;
  // };
  // prin() {
  //   print(nn);
  // }
  maps() {
    final flowerColor = {
      "roses": "red",
      "violets": "blue",
    };
    flowerColor.forEach(
      (key, value) {
        print("$key are $value");
      },
    );
  }

  //! filtering
  filtering() {
    final numbers = [1, 2, 3, 4, 5, 6];
    var oddNums = numbers.where((e) => e.isOdd);
    print(oddNums.toList());
  }

  //! reduce
  reduce() {
    // combine the elements of a list into a single value
    // reduce takes a function that takes two arguments and returns a value
    final numbers = [1, 2, 3, 4, 5, 6];
    var reduce = numbers.reduce(
      (value, element) => element + value,
    );
    print(reduce);
    //! the problem may occur if the list was empty
    // final numbers = [];
    // var reduce = numbers.reduce(
    //   (value, element) => element + value,
    // );
    // print(reduce);
    //! this will throw an error so we may use fold in this case
  }

  //! fold
  fold() {
    // final numbers = [];
    final numbers = [1, 2, 3, 4, 5, 6];
    //! this will run in both cases.

    var reduce = numbers.fold(
      0, // initial value
      (value, element) => element + value,
    );
    print(reduce);
  }

  //! sorting
  sorting() {
    final list = ["cookies", "brownies", "donuts", "pie"];
    // list.sort(); // this will sort the list in alphabetical order
    list.sort((a, b) => a.length.compareTo(
        b.length)); // this will sort the list by length of the strings
    // the compareTo method returns three possible values:-1 if a < b, 0 if a == b, and 1 if a > b

    print(list);
  }

  // Combining Higher‐Order Methods
  combine() {
    // عايزين نجيب اللي عد حروفه اكبر من 5 ونخليه حروف كابيتال
    final list = ["cake", "brownies", "donuts", "pie"];

    var newList =
        list.where((element) => element.length > 5).map((e) => e.toUpperCase());
    print(newList.toList()); // this will do the same as the above
  }

  //! Exercise
  exercise() {
    final scores = [89, 77, 46, 93, 82, 67, 32, 88];
    // order the grades from highest to lowest.
    // find all the B grades, that is, all the scores between 80 and 90.
    scores.sort((a, b) => b.compareTo(a));
    var bGrades = scores.where((element) => element > 80 && element < 90).toList();
    bGrades.sort();
    print(bGrades);
  }
}

void main(List<String> args) {
  AnonymousFunctions vv = AnonymousFunctions();
  vv.exercise();

  // vv.filtering();
  // print(vv.multiply(10, 20));
  // vv.maps();
  // print(" 'i \u2764 Dart'");
  // final numbers = [2, 4, 6, 8, 10, 12];
  // numbers.forEach((number) => print(number * number));
  // for (var number in numbers) {
  //   print(number * number);
  // }
  // var mapped = numbers.map(
  //   (e) => e * e,
  // ).toList();
  // print("$mapped");
}
