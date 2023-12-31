

// ignore: slash_for_doc_comments
/**
 * Given a square matrix, calculate the absolute difference between the sums of its diagonals.

For example, the square matrix  is shown below:

1 2 3
4 5 6
9 8 9  
The left-to-right diagonal = . The right to left diagonal = . Their absolute difference is .

Function description

Complete the  function in the editor below.

diagonalDifference takes the following parameter:

int arr[n][m]: an array of integers
Return

int: the absolute diagonal difference
Input Format

The first line contains a single integer, , the number of rows and columns in the square matrix .
Each of the next  lines describes a row, , and consists of  space-separated integers .

Constraints

Output Format

Return the absolute difference between the sums of the matrix's two diagonals as a single integer.

Sample Input

3
11 2 4
4 5 6
10 8 -12
Sample Output

15
Explanation

The primary diagonal is:

11
   5
     -12
Sum across the primary diagonal: 11 + 5 - 12 = 4

The secondary diagonal is:

     4
   5
10
Sum across the secondary diagonal: 4 + 5 + 10 = 19
Difference: |4 - 19| = 15

Note: |x| is the absolute value of x
 */
void main() {
  // print(DiagonalDifference.diagonalDifference(
  //   [
  //     [11, 2, 4],
  //     [4, 5, 6],
  //     [10, 8, -12],
  //   ],
  // ));
  print("Enter x ");
  // var x = int.parse(stdin.readLineSync()!);
  var x = 6;
  print("This is x plus 5 ${x + 5}");
}

/// right to left result
/// ex: sum => (i=0,m=0) + (i=1,m=1) + (i=3, m=3)
// i => rows
// m => cols
class DiagonalDifference {
  static diagonalDifference(List<List<int>> arr) {
    //todo use stdin instead;
    var matrixLength = 3;
    var rightToLeftResult = 0;
    var LeftToRightResult = 0;
    var absResult = 0;
    for (int i = 0; i < matrixLength; i++) {
      for (int m = 0; m < matrixLength; m++) {
        if (i == m) {
          rightToLeftResult += arr[i][m];
        }
      }
    }

    /*
    left to right  
    ex:   sum => (i=0,m=2), (i=1, m=1), (i=2,m0)
    3-1-0;  3-1-1; 3-1-2
    length - 1 - i
    m >= 0
     */
    for (int i = 0; i < matrixLength; i++) {
      for (int m = matrixLength - 1 - i; m >= 0;) {
        print(arr[i][m]);
        LeftToRightResult += arr[i][m];
        break;
      }
    }

    print("left to right ${LeftToRightResult}");
    print("right to left ${rightToLeftResult}");
    absResult = (rightToLeftResult - LeftToRightResult).abs();
    print("abs result ${absResult}");
    return absResult;


  }
/*
  void methodInJava(List<List<int>> arr) {
    int result = 0;
    int sum1 = 0, sum2 = 0;

    for (int i = 0; i < arr.size(); i++) {
      sum1 += arr.get(i).get(i);
    }

    for (int i = arr.size() - 1; i >= 0; i--) {
      sum2 += arr.get(i).get(arr.size() - 1 - i);
    }

    result = Math.abs(sum1 - sum2);

    return result;
  }

Explanation:

sum1 is the sum of elements in the left-right diagonal. Each element of the left-right diagonal has the same row number and column number.

sum2 is the sum of elements of the right-left diagonal. Each element of the right-left diagonal has the row number and column number such that: (Row Number + Column Number) = Order of matrix.


  */




//   Widget h(StatusEnum state){
//  return switch (state) {
//     case value:
      
//       break;
//     default:
//   }
// }
}
