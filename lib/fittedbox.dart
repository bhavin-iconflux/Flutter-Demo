import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('FittedBox Widget')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              "Without FittedBox",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const FittedBox(
                  child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Long text to understand FittedBox",
                  style: TextStyle(fontSize: 200, color: Colors.white),
                ),
              ))),
        ],
      )),
    );
  }
}
