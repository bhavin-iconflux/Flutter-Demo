import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(title: const Text('TextButton Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: style,
                onPressed: () {},
                child: const Text('Enable Text Button')),
            TextButton(
                style: style,
                onPressed: null,
                child: const Text('Disable Text Button'))
          ],
        ),
      ),
    );
  }
}
