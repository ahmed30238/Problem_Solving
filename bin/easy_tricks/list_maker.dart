void main(List<String> args) {
  String input = "1 2 3 4 3 3 2 1";
  var c = input.split(" ").map((e) => int.parse(e)).toList();
  print(c);
}
