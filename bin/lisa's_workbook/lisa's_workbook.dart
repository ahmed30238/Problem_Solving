//
//
void main(List<String> args) {
  print(LisaWorkBook.workbook(5, 3, [4, 2, 6, 1, 10]));
  // print((6 / 3).ceil());
}

// 1st page ==> (ch1 problem 1,2,3) => +1 special problem
// 2nd page ==> (ch1 problem 4) => 0 special problem
// 3rd page ==> (ch2 problem 1,2) => 0
// 4th page ==> (ch3 problem 1,2,3) => 0
// 5th page ==> (ch3 problem 4,5,6) => +1
// 6th page ==> (ch4 problem 1) => 0
// 7th page ==> (ch5 problem 1,2,3) => 0
// 8th page ==> (ch5 problem 4,5,6) => 0
// 9th page ==> (ch5 problem 7,8,9) => +1
// 10th page ==> (ch5 problem 10) => +1
class LisaWorkBook {
  static int workbook(int n, int k, List<int> arr) {
    // n ==> number of chapthers
    // k ==> no of problem in one page
    // arr[i] ==> no of problem in this chapter
    // if the number of problem matches the number of the page
    // that mean this is a special problem
    int page = 1;
    int specialProblems = 0;

    for (int i = 0; i < n; i++) {
      int problems = arr[i];

      for (int problem = 1; problem <= problems; problem++) {
        if (problem == page) {
          specialProblems++;
        }

        // Move to next page when necessary
        if (problem % k == 0 || problem == problems) {
          page++;
        }
      }
    }

    return specialProblems;
  }
}
