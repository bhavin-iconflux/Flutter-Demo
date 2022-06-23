import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class FutureOrClass extends StatelessWidget {
  const FutureOrClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('FutureOr Class')),
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

  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: const Text("print string without await"),
          onPressed: () {
            printString();
          },
        ),
        ElevatedButton(
          child: const Text("print string with await"),
          onPressed: () {
            printStringWithAwait();
          },
        ),
        const SizedBox(height: 20),
        Text(title, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
      ],
    )));
  }

  void printString() {
    FutureOr<String> string = newString();
    setState(() {
      title = '$string';
    });
  }

  void printStringWithAwait() async {
    String string = await newString();
    setState(() {
      title = string;
    });
  }

  FutureOr<String> newString(){
    return 'FutureOr';
  }
}
