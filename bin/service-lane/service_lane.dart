import 'dart:math';

void main(List<String> args) {
  print(ServiceLane.serviceLane(4, [[0, 3], [4, 6], [6, 7], [3, 5], [0, 7]], 
    [2, 3, 1, 2, 3, 2, 3, 3]));
}

class ServiceLane {
  static List<int> serviceLane(int n, List<List<int>> cases, List<int> width) {
    List<int> res = [];
    int start = 0;
    int end = 0;
    int minimum = 999999999;
    var limitedList = [];
    for (var item in cases) {
      start = item.first;
      end = item.last;

      int i = start;
      while (i <= end) {
        // if (i + 1 < width.length) {
          limitedList.add(width[i]);
          minimum = min(minimum, limitedList[i]);
          print(width);

          // minimum =
          //     limitedList.reduce((value, element) => value > element ? element : value);
        // }
        i++;
      }
      print(limitedList);
      limitedList.clear();
      res.add(minimum);
    }

    return res;
  }
}
