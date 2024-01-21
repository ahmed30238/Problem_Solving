void main(List<String> args) {
  String input = "0 0 1 0 0 1 0";
  var c = input.split(" ").map((e) => int.parse(e)).toList();
  print(c);
}
