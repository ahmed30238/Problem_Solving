// import 'dart:math';
Map<String, int> values = {"Ahmed": 23, "mayar": 26, "Tasnem": 16};

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

List<Person> persons = [
  ...List.generate(
      values.length,
      (index) =>
          values.entries.map((e) => Person(e.key, e.value)).toList()[index])
];
List<Person> list = values.entries.map((e) => Person(e.key, e.value)).toList();
/// list equal persons with different syntax
// Map<String, int> person = {for (var item in persons) item.name: item.age};


Map<String, int> map = {for (var person in persons) person.name: person.age};

void main() {
  print(persons[1].name);
}
