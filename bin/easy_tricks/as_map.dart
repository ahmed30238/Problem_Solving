
void main() {
  List<String> fruits = [
    "Apple",
    "Mango",
    "Grapes",
    "Tomatoe",
  ];

  var map = fruits.map((e) => "I Love " + e).toList();
  var asmap = fruits.asMap( );

  print(map);
  print(asmap);
  print(asmap.keys.toList());
}
