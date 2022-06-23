import 'dart:collection';

import 'package:flutter/material.dart';

class QueueClass extends StatelessWidget {
  const QueueClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:
            AppBar(title: const Text('Queue Class')),
        body: QueueExample());
  }
}

class QueueExample extends StatelessWidget {
  QueueExample({Key? key}) : super(key: key);
  final Queue queue = Queue();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    queue.add('John');
    queue.add('Mac');
    queue.add('Hardy');
    queue.add('Nic');

    Queue addFirst() {
      queue.addFirst('Big');
      return queue;
    }

    Queue addLast() {
      queue.addLast('Small');
      return queue;
    }

    String getFirstElement() {
      return queue.first;
    }

    Queue removeFirstElement() {
      queue.removeFirst();
      return queue;
    }

    Queue removeLastElement() {
      queue.removeLast();
      return queue;
    }

    Queue clearQueue() {
      queue.clear();
      return queue;
    }

    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Queue Example: $queue",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Queue isEmpty: ${queue.isEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Queue isNotEmpty: ${queue.isNotEmpty}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Queue length: ${queue.length}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Queue element at 2: ${queue.elementAt(2)}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Queue add first: ${addFirst()}",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Queue add last: ${addLast()}",
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Text("Queue get first element: ${getFirstElement()}",
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Text("Queue remove first element: ${removeFirstElement()}",
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Text("Queue remove last element: ${removeLastElement()}",
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            Text("Queue clear: ${clearQueue()}",
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            // Text("LinkedList last insert after: ${insertAfter()}",
            //     style:
            //         const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            // const SizedBox(height: 10),
            // Text("LinkedList remove last: ${removeLast()}",
            //     style:
            //         const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            // const SizedBox(height: 10),
            // Text("LinkedList clear: ${clear()}",
            //     style:
            //         const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            // const SizedBox(height: 10),
          ],
        ));
  }
}
