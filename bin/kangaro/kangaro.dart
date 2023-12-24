class KangaroJump {
  String kangaro(int x1, int v1, int x2, int v2) {
    int jumps1 = x1 + v1;
    int jumps2 = x2 + v2;
    if (x2 > x1 && v2 > v1) {
      return "NO";
    } else if (jumps1 == jumps2) {
      return "YES";
    } else {
      for (var i = 0; i < 10000;) {
        jumps1 += v1;
        jumps2 += v2;
        if (jumps1 == jumps2) {
          break;
        }
      }
      if (jumps2 == jumps1) {
        return "YES";
      } else {
        return "NO";
      }
    }
  }
}
