void main(List<String> args) {
  String input = "1 3 1 3 1 4 1 3 2 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5";
  var c = input.split(" ").map((e) => int.parse(e)).toList();
  print(c);
}
