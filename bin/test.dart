/*
 if we have an array 
 [
  [1,2,3],
  [4,5,6],
  [7,8,9],
 ]

 then we want to get the sum of diagonals ==> 1+5+9 & 3,5,7

 if (i) represents rows and (m) represents cols then we gonna need to supply 
 from left to right diagonal {(i1,m1),{(i2,m2),(i3,m3)}}
 from right to left diagonal {(i1,m3),(i2,m2),(i3,m1)}
 */

class DiagonalSum {
  int leftToRightSum = 0;
  int rightToLeftSum = 0;
  void diagonalSum(List<List<int>> arr) {
    // left to right sum
    for (int i = 0; i < arr.length; i++) {
      for (int m = 0; m < arr.length; m++) {
        if (i == m) {
          leftToRightSum += arr[i][m];
        }
      }
    }
    // right To LeftSum
    for (var i = 0; i < arr.length; i++) {
      // 1) i=0 ==> m = 3
      for (var m = arr.length - 1 - i; m >= 0;) {
        rightToLeftSum += arr[i][m];
        break;
      }
    }
    print(leftToRightSum);
    print(rightToLeftSum);
  }
}
