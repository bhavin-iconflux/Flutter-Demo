import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  const DraggableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Draggable Widget')),
        body: Center(
          child: Draggable(
            feedback: Container(
              width: 200,
              height: 200,
              child: FlutterLogo(size: 20),
            ),
            child: Container(
              width: 100,
              height: 100,
              child: FlutterLogo(size: 20),
            ),
          ),
        ));
  }
}
