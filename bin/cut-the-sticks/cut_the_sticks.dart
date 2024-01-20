
void main(List<String> args) {
  print(CutTheSticks.cutTheSticks([1, 2, 3, 4, 3, 3, 2, 1]));
}

/// انا عايز اطرح من كل عنصر في الليسته اصغر عنصر فيها
/// لو العنصر بيساوي صفر احذفه
/// وشوف لسه ياقي كام عنصر في الليسته

class CutTheSticks {
  static List<int> cutTheSticks(List<int> arr) {

  }
}
/**
 * You are given a number of sticks of varying lengths. You will iteratively cut the sticks into smaller sticks, discarding the shortest pieces until there are none left.
 *  At each iteration you will determine the length of the shortest stick remaining, cut that length from each of the longer sticks and then discard all the pieces of that shortest length.
 *  When all the remaining sticks are the same length, they cannot be shortened so discard them.
 * ex arr = [1,2,3]

Given the lengths of n sticks, print the number of sticks that are left before each iteration until there are none left.
 */
