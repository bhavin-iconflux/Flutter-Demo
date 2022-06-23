import 'dart:ffi';

import 'package:flutter/material.dart';

class FutureClass extends StatelessWidget {
  const FutureClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Future Class')),
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
          child: const Text("Call Future class without error"),
          onPressed: () {
            setState(() {
              title = "Getting user email...";
            });
           getUserEmail().then((value) =>
               setState(() {
                 title = value;
               })
           );
          },
        ),
        ElevatedButton(
          child: const Text("Call Future class with error"),
          onPressed: () {
            setState(() {
              title = "Getting user email...";
            });
            getUserEmailWithError().then((value) =>
                setState(() {
                  title = value;
                })
            ).onError((error, stackTrace) =>
                setState(() {
                  title = error.toString();
                })
            );
          },
        ),
        const SizedBox(height: 20),
        Text(title, style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
      ],
    )));
  }

  Future<String> getUserEmail() {
    return Future.delayed(const Duration(seconds: 5), () => "Email is: john@gmail.com");
  }

  Future<String> getUserEmailWithError() async {
    await Future.delayed(const Duration(seconds: 5));
    return Future.error("Exception: User Email not found");
  }
}
