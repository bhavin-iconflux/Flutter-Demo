import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Container Widget',
      home: Scaffold(
          appBar: AppBar(title: const Text('Container Widget')),
          body: Center(
            child: Container(
              child: const Text("Hey, I am inside text of container",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              height: 250,
              width: 250,
              color: Colors.blue,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              transform: Matrix4.rotationZ(0.1),

            ),
          )),
    );
  }
}
