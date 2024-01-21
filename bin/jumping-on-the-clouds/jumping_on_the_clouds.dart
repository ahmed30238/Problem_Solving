void main(List<String> args) {
  print(JumpingOnTheClouds.jumpingOnClouds([0, 0, 0, 0, 1, 0]));
}

class JumpingOnTheClouds {
  static int jumpingOnClouds(List<int> c) {
    int jumps = 0;
    int i = 0;
    while (i < c.length - 1) {
      if (i + 2 < c.length && c[i + 2] == 0) {
        i += 2;
      } else {
        i++;
      }
      jumps++;
    }
    return jumps;
  }
}
