import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Center Widget')),
      body: Center(
        child: Container(
          width: 120,
          height: 120,
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text("Center Text",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
    );
  }
}
