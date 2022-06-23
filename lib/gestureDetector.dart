import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatelessWidget {
  const GestureDetectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: GestureDetectorStateFul(),
    );
  }
}

class GestureDetectorStateFul extends StatefulWidget {
  const GestureDetectorStateFul({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => GestureDetectorState();
}

class GestureDetectorState extends State<GestureDetectorStateFul> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: const Text('GestureDetector Widget')),
      body: Center(
        child: Container(
          color: color,
          width: 200,
          height: 200,
          child: GestureDetector(
            onTap: () {
              setState(() {
                color == Colors.blue
                    ? color = Colors.orange
                    : color = Colors.blue;
              });
            },
          ),
        ),
      ),
    ));
  }
}
