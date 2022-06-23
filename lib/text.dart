import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        appBar: AppBar(title: const Text('Text Widget')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text("I am simple Text", style: TextStyle(fontSize: 25)),
                ),
                Padding(padding: EdgeInsets.all(8),child: Text.rich(TextSpan(text: "I am ",style:TextStyle(fontSize: 18), children: [
                  TextSpan(text: "Rich ",style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: "Text",style: TextStyle(fontWeight: FontWeight.bold)),
                ])),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
