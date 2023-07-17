// import 'package:problem_solving/problem_solving.dart' as problem_solving;

import 'array_sum/array_sum.dart';
import 'problem2.dart';
import 'dart:core';

import 'very_big_sum/very_big.dart';

void main(List<String> arguments) {
  int x = 55;
  print(x.toString().length);
  print("the very big result is ${VeryBigArraySum.aVeryBigSumMethod([
        BigInt.parse("5000000000000000000000"),
        BigInt.parse("5000000000000000000000"),
        BigInt.parse("5000000000000000000000"),
        BigInt.parse("5000000000000000000000"),
      ])}");
  print(ArraySum.printSum([3, 1000, 4]));
  print(ProblemBSolution.compareTriplets([4, 3, 3], [3, 2, 1]));
}
