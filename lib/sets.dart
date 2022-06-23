import 'package:flutter/material.dart';

class SetsClassExample extends StatelessWidget {
  const SetsClassExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Sets Class')), body: SetsClassDemo());
  }
}

class SetsClassDemo extends StatelessWidget {
  SetsClassDemo({Key? key}) : super(key: key);
  final Set<int> set = {};

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    set.add(1);
    set.add(2);
    set.add(3);
    set.add(4);

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Set Example: $set",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Set isEmpty: ${set.isEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Set isNotEmpty: ${set.isNotEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Set length: ${set.length}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Set element at 2: ${set.elementAt(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Set where item > 2: ${set.where((element) => element > 2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
                "Set first where item > 2: ${set.firstWhere((element) => element > 2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(
                "Set last where item > 2: ${set.lastWhere((element) => element > 2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Set contains 2: ${set.contains(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ));
  }
}
