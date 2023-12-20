/*
Staircase detail

This is a staircase of size :

   #
  ##
 ###
####
Its base and height are both equal to . It is drawn using # symbols and spaces. The last line is not preceded by any spaces.

Write a program that prints a staircase of size .

Function Description

Complete the staircase function in the editor below.

staircase has the following parameter(s):

int n: an integer
Print

Print a staircase as described above.

Input Format

A single integer, , denoting the size of the staircase.

Constraints

 .

Output Format

Print a staircase of size  using # symbols and spaces.

Note: The last line must have  spaces in it.

Sample Input

6 
Sample Output

     #
    ##
   ###
  ####
 #####
######
Explanation

The staircase is right-aligned, composed of # symbols and spaces, and has a height and width of .
 */


import 'package:quick_log/quick_log.dart';

class Staircase {
  Logger logger = Logger("fgfg");
  
  void staircase(int n) {
    logger.fine("message");
    // ex n = 5 ==> i = 1 ==> j = 5 - 1 = 4

    for (int i = 1; i <= n; i++) {
      // Print spaces
      for (int j = n - i; j > 0; j--) {
        logger.fine(" ");
      }
      // Print #
      for (int j = 0; j < i; j++) {
        logger.fine("#");
      }

      // Move to the next line
      print("\n");
    }
  }
}
