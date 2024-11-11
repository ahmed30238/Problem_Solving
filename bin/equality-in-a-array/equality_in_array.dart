
void main(List<String> args) {
  print(EqualityInArray.equalizeArray([
    10,
    27,
    9,
    10,
    100,
    38,
    30,
    32,
    45,
    29,
    27,
    29,
    32,
    38,
    32,
    38,
    14,
    38,
    29,
    30,
    63,
    29,
    63,
    91,
    54,
    10,
    63
  ]));
}

class EqualityInArray {
  static int equalizeArray(List<int> arr) {
    Map<int, int> map = {};
    int noOfDeletion = 0;
    print(arr.length);
    for (var item in arr) {
      map.update(item, (value) => value + 1, ifAbsent: () => 1);
    }
    print(map);
    int maxVal = 0;
    int maxKey = 0;
    map.forEach((key, value) {
      if (value > maxVal) {
        maxVal = value;
        maxKey = key;
      }
    });
    print(maxVal);
    /// we can replace this for loop with (return arr.length - maxVal)
    for (var i = 0; i < arr.length; i++) {
      if (arr[i] != maxKey) {
        noOfDeletion++;
      }
    }
    return noOfDeletion;
  }
}
