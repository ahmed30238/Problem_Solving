void main(List<String> args) {
  print(LibraryFine.libraryFine(28, 2, 2015, 5, 4, 2015));
}

class LibraryFine {
  static int libraryFine(int d1, int m1, int y1, int d2, int m2, int y2) {
    int fine = 0;
    int fee = 0;
    if (y1 > y2) {
      fine = 10000;
      fee = y2 - y1 * fine;
    } else if (m1 > m2 && y1 > y2) {
      fine = 500;
      fee = m2 - m1 * fine;
    } else if (d1 > d2 && m1 > m2 && y1 > y2) {
      fine = 15;
      fee = d2 - d1 * fine;
    } else {
      fine = 0;
      fee = 0;
    }
    return fee;
  }
}
