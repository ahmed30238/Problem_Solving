//
void main(List<String> args) {
  print(
    MagicSquare.formingMagicSquare([
      [4, 8, 2],
      [4, 5, 7],
      [6, 1, 6]
    ]),
  );
}

class MagicSquare {
  static int formingMagicSquare(List<List<int>> s) {
    var allPossoibleMagicSqures = [
      [
        [8, 1, 6],
        [3, 5, 7],
        [4, 9, 2]
      ],
      [
        [6, 1, 8],
        [7, 5, 3],
        [2, 9, 4]
      ],
      [
        [4, 9, 2],
        [3, 5, 7],
        [8, 1, 6]
      ],
      [
        [2, 9, 4],
        [7, 5, 3],
        [6, 1, 8]
      ],
      [
        [8, 3, 4],
        [1, 5, 9],
        [6, 7, 2]
      ],
      [
        [4, 3, 8],
        [9, 5, 1],
        [2, 7, 6]
      ],
      [
        [6, 7, 2],
        [1, 5, 9],
        [8, 3, 4]
      ],
      [
        [2, 7, 6],
        [9, 5, 1],
        [4, 3, 8]
      ]
    ];
    var min = 1000000;
    for (var p in allPossoibleMagicSqures) {
      int currentCost = 0;

      for (var i = 0; i < p.length; i++) {
        for (var j = 0; j < p[i].length; j++) {
          currentCost += (s[i][j] - p[i][j]).abs();
        }
      }
      if (currentCost < min) {
        min = currentCost;
      }
    }
    return min;
  }
}
