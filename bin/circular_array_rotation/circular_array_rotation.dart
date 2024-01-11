//

void main(List<String> args) {
  print(CircularArrayRotation.circularArrayRotation([1, 2, 3], 2, [0, 1, 2]));
}

class CircularArrayRotation {
  /// k ==> no of rotatinos on a
  /// queries ==> indices to find element on a after rotation
  static List<int> circularArrayRotation(
      List<int> a, int k, List<int> queries) {
    List<int> values = [];
    while (k > 0) {
      int item = a.last;
      a.remove(item);
      a.insert(0, item);
      k--;
    }
    for (var i = 0; i < queries.length; i++) {
      values.add(a[queries[i]]);
    }

    return values;
  }
}
/**
 * John Watson knows of an operation called a right circular rotation on an array of integers.
 * One rotation operation moves the last array element to the first position and shifts all remaining elements right one.
 * To test Sherlock's abilities, Watson provides Sherlock with an array of integers.
 * Sherlock is to perform the rotation operation a number of times then determine the value of the element at a given position.

For each array, perform a number of right circular rotations and return the values of the elements at the given indices.
 */