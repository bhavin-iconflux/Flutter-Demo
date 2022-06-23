import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Row Widget',
      home: Scaffold(
          appBar: AppBar(title: const Text('Row Widget')),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.ltr,
            children: const [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "s",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text.rich(TextSpan(
                      text: "I am ",
                      style: TextStyle(fontSize: 18),
                      children: [
                        TextSpan(
                            text: "Rich ",
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        TextSpan(
                            text: "Text",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]))),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "I",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          )),
    );
  }
}
