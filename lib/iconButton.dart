import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('IconButton Widget')),
        body: Center(child: IconButtonStateFul()));
  }
}

class IconButtonStateFul extends StatefulWidget {
  const IconButtonStateFul({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => IconButtonState();
}

class IconButtonState extends State<IconButtonStateFul> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        const SizedBox(height: 15),
        Text(
          "$count Increased",
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
