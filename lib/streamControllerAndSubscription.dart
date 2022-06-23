import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class StreamControllerAndSubscriptionClass extends StatelessWidget {
  const StreamControllerAndSubscriptionClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: const Text('Stream Controller And Subscription Class')),
        body: const FutureClassStateful());
  }
}

class FutureClassStateful extends StatefulWidget {
  const FutureClassStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FutureClassState();
}

class FutureClassState extends State<FutureClassStateful> {
  String title = "";
  final StreamController<String> _streamController =
      StreamController<String>.broadcast();

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text("Start stream controller"),
          onPressed: () {
            printString();
          },
        ),
        const SizedBox(height: 20),
        Text(title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
      ],
    )));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  Future<void> printString() async {
    StreamSubscription<String> subscriber =
        _streamController.stream.listen((String data) {
      print(data);
      setState(() {
        title = data;
      });
    }, onError: (error) {
      setState(() {
        title = error;
      });
    }, onDone: () {
      setState(() {
        title = 'Stream closed';
      });
    });
    _streamController.add("New Item Added");
    // await subscriber.cancel();
    // _streamController.close();
    // _streamController.addError('Error...');
  }
}
