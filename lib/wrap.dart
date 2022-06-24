import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Wrap Widget')),
      body: Wrap(
        direction: Axis.vertical,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.teal,
          ),Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
