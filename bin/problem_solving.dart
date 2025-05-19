// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:problem_solving/problem_solving.dart' as problem_solving;

import 'dart:core';

void main(List<String> arguments) {

  AAA a = AAA();
  a._name = "sdds";
  print(a._name);
}
class AAA {
  String? _name;
  // AAA(
  //  {  this._name = "as",}
  // );

  setName(String n) {
    _name = n;
  }

  String get name => _name ?? "";
}

class Graph {
  late Map<int, List<Map<String, int>>> adjacencyList;

  Graph(int vertices) {
    adjacencyList = <int, List<Map<String, int>>>{};
    for (int i = 1; i <= vertices; i++) {
      adjacencyList[i] = [];
    }
  }

  void addEdge(int from, int to, int weight) {
    adjacencyList[from]!.add({'to': to, 'weight': weight});
    adjacencyList[to]!.add({'to': from, 'weight': weight});
  }

  List<int> shortestPaths(int start) {
    List<int> distances = List.filled(adjacencyList.length + 1, -1);
    distances[start] = 0;

    List<Map<String, int>> priorityQueue = [
      {'vertex': start, 'distance': 0}
    ];

    while (priorityQueue.isNotEmpty) {
      priorityQueue.sort((a, b) => a['distance']!.compareTo(b['distance']!));
      var currentNode = priorityQueue.removeAt(0);

      for (var neighbor in adjacencyList[currentNode['vertex']]!) {
        int newDistance =
            distances[currentNode['vertex'] ?? 0] + neighbor['weight']!;
        if (distances[neighbor['to'] ?? 0] == -1 ||
            newDistance < distances[neighbor['to'] ?? 0]) {
          distances[neighbor['to'] ?? 0] = newDistance;
          priorityQueue
              .add({'vertex': neighbor['to'] ?? 0, 'distance': newDistance});
        }
      }
    }

    distances.removeAt(start);
    distances.removeWhere((element) => element == 0);

    return distances;
  }
}
