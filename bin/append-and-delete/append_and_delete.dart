import 'dart:math';

void main(List<String> args) {
  print(AppendAndDelete.appendAndDelete("ashley", "ash", 2));
}

class AppendAndDelete {
  static String appendAndDelete(String s, String t, int k) {
    if (k >= s.length + t.length) return "Yes";
    int same = min(s.length, t.length);
    for (var i = 0; i < min(s.length, t.length); i++) {
      if (s[i] != t[i]) {
        print(i);
        same = i;
        break;
      }
    }
    k -= s.length - same;
    k -= t.length - same;
    return k >= 0 && k % 2 == 0 ? "Yes" : "No";
  }
}
