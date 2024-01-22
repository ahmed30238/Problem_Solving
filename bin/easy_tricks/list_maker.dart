void main(List<String> args) {
  String input = "10 27 9 10 100 38 30 32 45 29 27 29 32 38 32 38 14 38 29 30 63 29 63 91 54 10 63";
  var c = input.split(" ").map((e) => int.parse(e)).toList();
  print(c);
}
