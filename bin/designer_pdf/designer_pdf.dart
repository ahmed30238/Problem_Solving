//

void main(List<String> args) {
  print(DesignerPdf.designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], "abc"));
}

class DesignerPdf {
  static int designerPdfViewer(List<int> h, String word) {
    var aCode = 'a'.codeUnitAt(0);
    var zCode = 'z'.codeUnitAt(0);
    List<String> alphabets = List<String>.generate(
      zCode - aCode + 1,
      (index) => String.fromCharCode(aCode + index),
    );
    var wordInLetters = word.split("");
    int maxHeight = 1;

    List<int> indexes = [];
    for (var i = 0; i < wordInLetters.length; i++) {
      indexes.add(alphabets.indexOf(wordInLetters[i]));
    }
    var heights = [];
    for (var i = 0; i < indexes.length; i++) {
      heights.add(h[indexes[i]]);
    }
    maxHeight = heights.reduce((curr, next) {
      if (curr > next) {
        return curr;
      } else {
        return next;
      }
    });
    int highlightedArea = maxHeight * wordInLetters.length;
    return highlightedArea;
  }
}
