// ignore: slash_for_doc_comments
/**
 Given a time in -hour AM/PM format, convert it to military (24-hour) time.

Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
- 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

Example


Return '12:01:00'.


Return '00:01:00'.

Function Description

Complete the timeConversion function in the editor below. It should return a new string representing the input time in 24 hour format.

timeConversion has the following parameter(s):

string s: a time in  hour format
Returns

string: the time in  hour format
Input Format

A single string  that represents a time in -hour clock format (i.e.:  or ).

Constraints

All input times are valid
Sample Input 0

07:05:45PM
Sample Output 0

19:05:45
 */

/// Am ==> 00:00:00 ==> 11:59:59
/// Pm ==> 12:00:00 ==> 23:59:59
///
/// 07:58:47Pm ==> 19:58:47
/// 07:58"47Am ==> 07:58:47

class TimeConversion {
  String timeConversion(String s) {
    int hours = int.parse(s.substring(0, 2));
    String minSec = s.substring(2, 8);

    if (s.contains("PM")) {
      hours = hours == 12 ? hours : hours += 12;
    }
    if (s.endsWith("AM")) {
      hours = hours == 12 ? 0 : hours;
      if (hours < 10) {
        return "0${hours.toString()}$minSec ";
      }
    }
    return "$hours$minSec";
  }
}
