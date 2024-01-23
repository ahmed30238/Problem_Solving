import 'dart:math';

void main(List<String> args) {
  print(Encryption.encryption("haveaniceday"));
}

/// have
/// anic
/// eday
class Encryption {
  static String encryption(String s) {
    String input = s.replaceAll(" ", "");
    int l = input.length;
    int row = sqrt(l).floor();
    int columns = sqrt(l).ceil();
    List<String> grid = List.generate(columns, (index) => "");
    if (row * columns > l) {
      row++;
    }
    for (var i = 0; i < l; i++) {
      grid[i % columns] += input[i];
      print(i % columns);
    }


    var res = grid.join(" ");
    return res;
  }
}
/**
 An English text needs to be encrypted using the following encryption scheme.
 First, the spaces are removed from the text. Let  be the length of this text.
 Then, characters are written into a grid, whose rows and columns have the following constraints:


//!
// After removing spaces, the string is 54 characters long.
// sqrt(54) is between 7 and 8, so it is written in the form of a grid with 7 rows and 8 columns.
 */