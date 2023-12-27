class BreakingRecord {
  static List<int> breakingRecords(List<int> scores) {
    int bestRecord = scores[0];
    int worstRecord = scores[0];
    int bestRecordBreakCounter = 0;
    int worstRecordBreakCounter = 0;
    for (var i = 0; i < scores.length; i++) {
      if (scores[i] > bestRecord) {
        bestRecord = scores[i];
        bestRecordBreakCounter++;
      } else if (scores[i] < worstRecord){
        worstRecord = scores[i];
        worstRecordBreakCounter++;
      }
    }

    return [bestRecordBreakCounter, worstRecordBreakCounter];
  }
}
