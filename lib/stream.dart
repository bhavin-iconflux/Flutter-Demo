import 'package:flutter/material.dart';

class StreamClass extends StatelessWidget {
  const StreamClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Stream Class')),
        body: const FutureClassStateful());
  }
}

class FutureClassStateful extends StatefulWidget {
  const FutureClassStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FutureClassState();
}

class FutureClassState extends State<FutureClassStateful> {
  int total = 0;
  final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text("Call Stream class"),
          onPressed: () {
            sumStream(stream).then((value) => setState(() {
                  total = value;
                }));
          },
        ),
        const SizedBox(height: 20),
        Text('Sum is $total',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
      ],
    )));
  }

  Future<int> sumStream(Stream<int> stream) async {
    var sum = 0;
    await for (var value in stream) {
      sum += value;
    }
    return sum;
  }
}
