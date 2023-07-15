
import 'package:problem_solving/problem_solving.dart' as problem_solving;

void main(List<String> arguments) {
  print('Hello world: ${problem_solving.calculate()}!');
  print(
    printSum(
      [3, 12, 4],
    ),
  );
}

int printSum(List<int> ar) {
  var sum = 0;
  for (int i = 0; i < ar.length; i++) {
    sum += ar[i];
  }
  return sum;
}
