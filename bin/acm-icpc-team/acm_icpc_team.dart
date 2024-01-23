void main(List<String> args) {
  print(AcmIcpcTeam.acmTeam(["10101", "11100", "11010", "00101"]));
}

class AcmIcpcTeam {
  static List<int> acmTeam(List<String> topic) {
    List<int> res =
        []; // res[0] max no of subject, res[1] no of team with that no of subject
    int maxNumberOfKnownTopics = 0;
    int numberOfTeamsWithMaxNumberOfKnownTopics = 0;
    int knownTopicCount = 0;
    String s1 = "";
    String s2 = "";
    for (var i = 0; i < topic.length; i++) {
      for (var j = i + 1; j < topic.length; j++) {
        s1 = topic[i];
        s2 = topic[j];
        for (var k = 0; k < s1.length; k++) {
          if (s1[k] == "1" || s2[k] == "1") {
            knownTopicCount++;
          }
        }
        if (knownTopicCount > maxNumberOfKnownTopics) {
          maxNumberOfKnownTopics = knownTopicCount;
          numberOfTeamsWithMaxNumberOfKnownTopics = 1;
        } else if (maxNumberOfKnownTopics == knownTopicCount) {
          numberOfTeamsWithMaxNumberOfKnownTopics++;
        }
        knownTopicCount = 0;
      }
    }
    res.add(maxNumberOfKnownTopics);
    res.add(numberOfTeamsWithMaxNumberOfKnownTopics);
    return res;
  }
}
/**
  Submissions	Leaderboard	Discussions	Editorial	Topics
  There are a number of people who will be attending ACM-ICPC World Finals. Each of them may be well versed in a number of topics.
  Given a list of topics known by each attendee, presented as binary strings, determine the maximum number of topics a 2-person team can know.
  Each subject has a column in the binary string, and a '1' means the subject is known while '0' means it is not.
  Also determine the number of teams that know the maximum number of topics.
  Return an integer array with two elements.
  The first is the maximum number of topics known, and the second is the number of teams that know that number of topics.
 */