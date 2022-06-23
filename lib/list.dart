import 'package:flutter/material.dart';

class ListClassExample extends StatelessWidget {
  const ListClassExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('List Class')), body: ListClassDemo());
  }
}

class ListClassDemo extends StatelessWidget {
  ListClassDemo({Key? key}) : super(key: key);
  final List<int> fixedList = List.filled(0, 5, growable: true);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    fixedList.add(1);
    fixedList.add(2);
    fixedList.add(3);
    fixedList.add(4);

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("List Example: $fixedList",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List isEmpty: ${fixedList.isEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List isNotEmpty: ${fixedList.isNotEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List length: ${fixedList.length}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List element at 2: ${fixedList.elementAt(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List get range(2,3): ${fixedList.getRange(2, 3).toList()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
                "List where item > 2: ${fixedList.where((element) => element > 2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
                "List first where item > 2: ${fixedList.firstWhere((element) => element > 2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
                "List last where item > 2: ${fixedList.lastWhere((element) => element > 2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List contains 2: ${fixedList.contains(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("List reversed: ${fixedList.reversed.toList()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ));
  }
}
