import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: const SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'My Widget: This is my widget. It has some content that I don\'t want '
                'blocked by certain manufacturers who add notches, holes, and round corners.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          )),
    );
  }
}
