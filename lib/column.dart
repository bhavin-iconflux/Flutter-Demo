import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Column Widget',
      home: Scaffold(
          appBar: AppBar(title: const Text('Column Widget')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.rtl,
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
