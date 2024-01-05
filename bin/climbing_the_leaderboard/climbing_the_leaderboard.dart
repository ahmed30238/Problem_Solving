//
void main(List<String> args) {
  print(
    ClimingLeaderBoard.climbingLeaderboard(
      [100, 90, 90, 80],
      [70, 80, 105],
    ),
  );
}

class ClimingLeaderBoard {
  static List<int> climbingLeaderboard(List<int> ranked, List<int> player) {
    List<int> result = [];
    List<int> enhancedRankedList = ranked.toSet().toList();
    int rankIndex = enhancedRankedList.length;
    for (var playerScore in player) {
      while (
          rankIndex > 0 && playerScore >= enhancedRankedList[rankIndex - 1]) {
        rankIndex--;
      }
      result.add(rankIndex + 1);
    }
    print(rankIndex);
    return result;
  }
}
/*
An arcade game player wants to climb to the top of the leaderboard and track their ranking.
The game uses Dense Ranking, so its leaderboard works like this:

The player with the highest score is ranked number 1 on the leaderboard.
Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.
Example

ranked = [100, 90, 90, 80]


         [100, 90, 80]
player = [70, 80, 105]


The ranked players will have ranks 1, 2, 2, and 3, respectively.
 If the player's scores are 70, 80 and 105, their rankings after each game are 4th, 3rd and 1st. Return [4, 3, 1].
 */
