void main(List<String> args) {
  print(RomanNumerals().decode("IV"));
}

class RomanNumerals {
  int decode(String s) {
    var map = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000};
    var result = 0;
    for (var i = 0; i < s.length; i++) {
      var cuurent = map[s[i]]!;
      var next = i + 1 < s.length ? map[s[i + 1]] : 0;
      if (cuurent < next!) {
        result -= cuurent;
      } else {
        result += cuurent;
      }
    }
    return result;
  }
}
    // for (int i = 0; i < s.length; i++) {
    //   var current = map[s[i]]!;
    //   var next = i + 1 < s.length ? map[s[i + 1]]! : 0;
    //   if (current < next) {
    //     result -= current;
    //   } else {
    //     result += current;
    //   }
    // }