import 'dart:collection';

import 'package:flutter/material.dart';

class LinkedListAndLinkedListEntry extends StatelessWidget {
  const LinkedListAndLinkedListEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:
            AppBar(title: const Text('LinkedList and LinkedListEntry Class')),
        body: LinkedListAndLinkedListEntryExample());
  }
}

class Item extends LinkedListEntry<Item> {
  int userId = 0;
  String name = '';

  Item(this.userId, this.name);

  @override
  String toString() {
    // TODO: implement toString
    return '$userId : $name';
  }
}

class LinkedListAndLinkedListEntryExample extends StatelessWidget {
  LinkedListAndLinkedListEntryExample({Key? key}) : super(key: key);
  final LinkedList linkedList = LinkedList<Item>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    linkedList.add(Item(1, 'John'));
    linkedList.add(Item(2, 'Mac'));
    linkedList.add(Item(3, 'Hardy'));
    linkedList.add(Item(4, 'nic'));

    LinkedList addFirst() {
      linkedList.addFirst(Item(5, 'Big'));
      return linkedList;
    }

    LinkedList insertAfter() {
      linkedList.last.insertAfter(Item(6, 'Small'));
      return linkedList;
    }

    LinkedList removeLast() {
      linkedList.remove(linkedList.last);
      return linkedList;
    }

    LinkedList clear() {
      linkedList.clear();
      return linkedList;
    }

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("LinkedList Example: $linkedList",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList isEmpty: ${linkedList.isEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList isNotEmpty: ${linkedList.isNotEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList length: ${linkedList.length}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList element at 2: ${linkedList.elementAt(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList add first: ${addFirst()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList last insert after: ${insertAfter()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList remove last: ${removeLast()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("LinkedList clear: ${clear()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
          ],
        ));
  }
}
