import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Align Widget')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: const Align(
                alignment: Alignment.bottomCenter,
                  child: Text("Align Bottom Center Text",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
