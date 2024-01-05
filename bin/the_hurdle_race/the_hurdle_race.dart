//
void main(List<String> args) {
  print(HurdleRace.hurdleRace(1, [1,2,3,3,2]));
}

class HurdleRace {
  static int hurdleRace(int k, List<int> height) {
    int numberOfDoses = 0;
    int maxValue = height.reduce((curr, next) {
      if (curr > next) {
        return curr;
      } else {
        return next;
      }
    });
    if (maxValue > k) {
      numberOfDoses = maxValue - k;
    }

    return numberOfDoses;
  }
}
