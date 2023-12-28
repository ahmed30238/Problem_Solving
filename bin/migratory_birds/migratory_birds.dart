//
void main(List<String> args) {
  print(MigratoryBirds.migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]));
}

class MigratoryBirds {
  static int migratoryBirds(List<int> arr) {
    List<int> typesCounter = [0, 0, 0, 0, 0];
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
  }
}
