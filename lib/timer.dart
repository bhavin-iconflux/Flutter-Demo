  import 'dart:async';

import 'package:flutter/material.dart';

class TimerClass extends StatelessWidget {
  const TimerClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: const Text('Timer Class')),
        body: const FutureClassStateful());
  }
}

class FutureClassStateful extends StatefulWidget {
  const FutureClassStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FutureClassState();
}

class FutureClassState extends State<FutureClassStateful> {
  int count = 0;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text("Start Countdown Timer"),
          onPressed: () {
            _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
              setState(() {
                count++;
              });
            });
          },
        ),
        const SizedBox(height: 20),
        Text('Timer: $count',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
      ],
    )));
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
