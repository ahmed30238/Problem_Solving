void main(List<String> args) {
  print(JumpingOnClouds.jumpingOnClouds([0, 0, 1, 0], 2));
}

class JumpingOnClouds {
  static int jumpingOnClouds(List<int> c, int k) {
    int energy = 100;
    int position = k;
    while (position % c.length != 0) {
      energy -= c[position] == 0 ? 1 : 3;
      position =
          position < c.length - k ? position + k : (k - (c.length - position));
    }
    energy -= c.first == 0 ? 1 : 3;
    return energy;
  }
}
