//
void main(List<String> args) {
  print(CountingValleys.countingValleys(8, "UDDDUDUU"));
}

class CountingValleys {
  static int countingValleys(int steps, String path) {
    int seaLevel = 0;
    int valleysCounter = 0;

    for (var i = 0; i < path.length; i++) {
      if (path[i] == "D") {
        seaLevel -= 1;
      } else if (path[i] == "U") {
        seaLevel += 1;
      }
      print("cLevel $seaLevel");
      if (seaLevel == -1 && i < path.length - 1 && path[i + 1] == "U") {
        valleysCounter++;
      }
    }
    return valleysCounter;
  }
}
