class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

Map<String, int> values = {
  "Ahmed": 23,
  "mayar": 26,
  "Tasnem": 16,
};

List<Person> list = values.entries
    .map((e) => Person(
          e.key,
          e.value,
        ))
    .toList();
Map<String, int> map = {
  for (var person in list) person.name: person.age,
};

void main() {
  print(values);
  print(map);
}
