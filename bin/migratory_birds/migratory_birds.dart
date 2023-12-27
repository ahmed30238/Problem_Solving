void main(List<String> args) {
  print(MigratoryBirds.migratoryBirds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]));
}

class MigratoryBirds {
  static int migratoryBirds(List<int> arr) {
    List<int> types = [];
    for (var i = 0; i < arr.length; i++) {
      for (var j = 1; j < arr.length; j++) {
        if (arr[i] == arr[j] && j > i) {

          print("i$i j$j ${arr[j]}");
        }
      }
    }
    return types.length;
  }
}
