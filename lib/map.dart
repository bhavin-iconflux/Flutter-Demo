import 'package:flutter/material.dart';

class MapClassExample extends StatelessWidget {
  const MapClassExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Map Class')), body: MapClassDemo());
  }
}

class MapClassDemo extends StatelessWidget {
  MapClassDemo({Key? key}) : super(key: key);
  final Map map = {0: 'Zero', 1: 'One', 2: 'Two', 3: 'Three'};

  Map sortMap() {
    return Map.fromEntries(
        map.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Map Example: $map",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map isEmpty: ${map.isEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map isNotEmpty: ${map.isNotEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map length: ${map.length}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map values: ${map.values}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map keys: ${map.keys}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Sort Map: ${sortMap()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map remove 2: ${map.remove(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map put : ${map.putIfAbsent(4, () => 'Four')}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Map after update: $map",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ],
        ));
  }
}
