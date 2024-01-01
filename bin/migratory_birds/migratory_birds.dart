//
void main(List<String> args) {
  print(MigratoryBirds.migratoryBirds(
      [1, 2, 3, 3, 4, 1, 1, 4, 5, 4, 3, 2, 1, 3, 4]));
}

class MigratoryBirds {
  static int migratoryBirds(List<int> arr) {
    List<int> typesCounter = [0, 0, 0, 0, 0];
    // It is guaranteed that each type is 1,2,3,4 or 5 .

    for (var i = 0; i < arr.length; i++) {
      for (var j = 0; j < 5; j++) {
        if (arr[i] == j + 1) {
          typesCounter[j]++;
        }
      }
    }

    int val = typesCounter.reduce((curr, next) {
      if (curr >= next) {
        return curr;
      } else {
        return next;
      }
    });
    int id = typesCounter.indexOf(val) + 1;
    return id;
    // another solutino
    // Map<int, int> birdsCounter = {};

    // for (var i = 0; i < arr.length; i++) {
    //   birdsCounter.update(arr[i], (value) => value + 1, ifAbsent: () => 1);
    // }
    // print(birdsCounter);
    // int theValue = 0;
    // int theKey = 0;
    // for (var bird in birdsCounter.entries) {
    //   if (bird.value > theValue) {
    //     theValue = bird.value;
    //     theKey = bird.key;
    //   }
    // }

    // return theKey;
  }
}
